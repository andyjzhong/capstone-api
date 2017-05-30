#sh scripts/courses/create.sh

#!/bin/sh

API="http://localhost:4741"
URL_PATH="/courses"
SEMESTERNAME="May 28"
TEST=111
TOKEN="XvP0cTbCHrKynNTT6m24r9YDxRIXrLqRcLiaRQjhHRY=--WgD2S7NGaANsQ3VbdHB2b+5KpL62uy36sw1kXwome24="
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "course": {
      "courseName": "'"${SEMESTERNAME}"'",
      "testAttribute": "'"${TEST}"'"
    }
  }'

echo
