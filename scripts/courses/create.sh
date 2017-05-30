#sh scripts/courses/create.sh

#!/bin/sh

API="http://localhost:4741"
URL_PATH="/courses"
NAME="New Course 2"
GRADE="A"
CREDITS=3
TOKEN="XPUp509e89kiUDnIPlPqhUvzxP4caFABKMKQ0IUXYXU=--7/7hH5/aeAYveevmMWXis314ZdmGL7slS2DJ7gvEJds="
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "course": {
      "courseName": "'"${NAME}"'",
      "grade": "'"${GRADE}"'",
      "credits": "'"${CREDITS}"'"
    }
  }'

echo
