'use strict';

const mongoose = require('mongoose');

const semesterSchema = new mongoose.Schema({
  semesterName: {
    type: String,
    required: true,
  },
  _owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true,
  },
});

const Semester = mongoose.model('Semester', semesterSchema);

module.exports = Semester;
