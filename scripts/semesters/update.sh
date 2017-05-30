#sh scripts/semesters/update.sh

#!/bin/bash

API="http://localhost:4741"
URL_PATH="/semesters"
NAME="Updated Semester!"
TOKEN="XPUp509e89kiUDnIPlPqhUvzxP4caFABKMKQ0IUXYXU=--7/7hH5/aeAYveevmMWXis314ZdmGL7slS2DJ7gvEJds="
ID="592d8535b556120ab19caeba"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "semester": {
      "semesterName": "'"${NAME}"'"
    }
  }'

echo
