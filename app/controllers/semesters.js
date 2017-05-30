'use strict';

const controller = require('lib/wiring/controller');
const models = require('app/models');
const Semester = models.semester;

const authenticate = require('./concerns/authenticate');
const setUser = require('./concerns/set-current-user');
const setModel = require('./concerns/set-mongoose-model');

const index = (req, res, next) => {
  Semester.find()
    .then(semesters => res.json({
      semesters: semesters.map((e) =>
        e.toJSON({ virtuals: true, user: req.user })),
    }))
    .catch(next);
};

const show = (req, res) => {
  res.json({
    semester: req.semester.toJSON({ virtuals: true, user: req.user }),
  });
};

const create = (req, res, next) => {
  let semester = Object.assign(req.body.semester, {
    _owner: req.user._id,
  });
  Semester.create(semester)
    .then(semester =>
      res.status(201)
        .json({
          semester: semester.toJSON({ virtuals: true, user: req.user }),
        }))
    .catch(next);
};

const update = (req, res, next) => {
  delete req.body._owner;  // disallow owner reassignment.
  req.semester.update(req.body.semester)
    .then(() => res.sendStatus(204))
    .catch(next);
};

const destroy = (req, res, next) => {
  req.semester.remove()
    .then(() => res.sendStatus(204))
    .catch(next);
};

module.exports = controller({
  index,
  show,
  create,
  update,
  destroy,
}, { before: [
  { method: setUser, only: ['index', 'show'] },
  { method: authenticate, except: ['index', 'show'] },
  { method: setModel(Semester), only: ['show'] },
  { method: setModel(Semester, { forUser: true }), only: ['update', 'destroy'] },
], });
