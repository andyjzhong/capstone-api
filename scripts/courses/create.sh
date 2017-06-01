#sh scripts/courses/create.sh

#!/bin/sh

API="http://localhost:4741"
URL_PATH="/courses"
NAME="New Course Revised 6"
GRADE="B"
CREDITS=3
SEMESTER="Fall 2017"
TOKEN="ykNXZChjpanoav0aoSA6OT95J0UPq+lXBa1XZc+zrNA=--yXtrkbx0HJFyt4ws63VH4a3pxtKzUROJIeKWBFBz9ds="
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "course": {
      "title": "'"${NAME}"'",
      "grade": "'"${GRADE}"'",
      "credits": "'"${CREDITS}"'",
      "semester": "'"${SEMESTER}"'"
    }
  }'

echo
