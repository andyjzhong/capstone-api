'use strict';

const mongoose = require('mongoose');

const courseSchema = new mongoose.Schema({
  title: {
    type: String,
    required: true,
  },
  grade: {
    type: String,
    required: true,
  },
  credits: {
    type: Number,
    required: true,
  },
  semester: {
    type: String,
    required: true,
  },
  _owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true,
  },
});

const Course = mongoose.model('Course', courseSchema);

module.exports = Course;
