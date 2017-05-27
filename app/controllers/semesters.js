'use strict'

// Copied from examples.js and modified to say semesters instead of examples.
const controller = require('lib/wiring/controller')
const models = require('app/models')
const Semester = models.semester

const authenticate = require('./concerns/authenticate')
const setUser = require('./concerns/set-current-user')
const setModel = require('./concerns/set-mongoose-model')

const index = (req, res, next) => {
  Semester.find({owner: req.user.id})
    .then(semesters => res.json({
      semesters: semesters.map((e) =>
        e.toJSON({ virtuals: true, user: req.user }))
    }))
    .catch(next)
}

const show = (req, res) => {
  res.json({
    semester: req.semester.toJSON({ virtuals: true
      // , user: req.user
    })
  })
}

const destroy = (req, res, next) => {
  console.log('ReqSemester is ', req.semester)
  req.semester.remove()
    .then(() => res.sendStatus(204))
    .catch(next)
}

const create = (req, res, next) => {
  console.log('ReqUser is ', req.user)
  // When we create, it will fill in the owner for you. In other words, it adds a key, owner, to req.body.example and sets the req.user._id as well.
  const semester = Object.assign(req.body.semester, {
    owner: req.user._id
  })
  console.log(semester)
  // Executes the create on the Semester model with the semester object.
  // This semester object is created with data from the client and the current user as owner.
  Semester.create(semester)
    // The newly created semester we get from database is rendered as JSON.
    .then(semester =>
      res.status(201)
        .json({
          semester: semester.toJSON({ virtuals: true, user: req.user })
        }))
    // Fire off error handler if any of the ".then" is an error.
    .catch(next)
}

const update = (req, res, next) => {
  // Protects against malicious users by deleting the owner key from req.body.
  delete req.body.owner  // disallow owner reassignment.
  // Updates the example in the database.
  req.semester.update(req.body.semester)
    // If update is successful, then send 204 error message to the client.
    .then(() => res.sendStatus(204))
    // Otherwise, update fails and send error handler message.
    .catch(next)
}

module.exports = controller({
  index,
  show,
  create,
  update,
  destroy
}, { before: [
  { method: setUser, only: ['index', 'show'] },
  { method: authenticate, except: ['index', 'show'] },
  { method: setModel(Semester), only: ['show'] },
  { method: setModel(Semester, { forUser: true }), only: ['update', 'destroy'] }
] })
