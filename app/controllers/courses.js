'use strict';

const controller = require('lib/wiring/controller');
const models = require('app/models');
const Course = models.course;

const authenticate = require('./concerns/authenticate');
const setUser = require('./concerns/set-current-user');
const setModel = require('./concerns/set-mongoose-model');

const index = (req, res, next) => {
  Course.find()
    .then(courses => res.json({
      courses: courses.map((e) =>
        e.toJSON({ virtuals: true, user: req.user })),
    }))
    .catch(next);
};

const show = (req, res) => {
  res.json({
    course: req.course.toJSON({ virtuals: true, user: req.user }),
  });
};

const create = (req, res, next) => {
  let course = Object.assign(req.body.course, {
    _owner: req.user._id,
  });
  Course.create(course)
    .then(course =>
      res.status(201)
        .json({
          course: course.toJSON({ virtuals: true, user: req.user }),
        }))
    .catch(next);
};

const update = (req, res, next) => {
  delete req.body._owner;  // disallow owner reassignment.
  req.course.update(req.body.course)
    .then(() => res.sendStatus(204))
    .catch(next);
};

const destroy = (req, res, next) => {
  req.course.remove()
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
  { method: setModel(Course), only: ['show'] },
  { method: setModel(Course, { forUser: true }), only: ['update', 'destroy'] },
], });
