#sh scripts/courses/create.sh

#!/bin/sh

API="http://localhost:4741"
URL_PATH="/courses"
NAME="New Course Revised 4"
GRADE="A"
CREDITS=3
SEMESTER="Fall 2017"
TOKEN="PY98gGOkDjHCHYcSMW09+Q0F3S48fVJLwMX3OQJ/h1U=--5v+34PhEmkAFqparRHjyJmtPxuJXp5wI3Ra56hjggwM="
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "course": {
      "courseName": "'"${NAME}"'",
      "grade": "'"${GRADE}"'",
      "credits": "'"${CREDITS}"'",
      "semester": "'"${SEMESTER}"'"
    }
  }'

echo
