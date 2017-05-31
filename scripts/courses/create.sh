#sh scripts/courses/create.sh

#!/bin/sh

API="http://localhost:4741"
URL_PATH="/courses"
NAME="New Course Revised 3"
GRADE="A"
CREDITS=3
SEMESTER="Fall 2017"
TOKEN="essVYaDZNtLgxvV4Dk2GYsWaCpCA9HJD8hJv6NtMAG0=--HC6fye0ZsLFwDjLdiK7KWh0p23E1/ec4+aMkQHPAWYA="
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
