#sh scripts/semesters/create.sh

#!/bin/sh

API="http://localhost:4741"
URL_PATH="/semesters"
NAME="New Semester 1"
TOKEN="XPUp509e89kiUDnIPlPqhUvzxP4caFABKMKQ0IUXYXU=--7/7hH5/aeAYveevmMWXis314ZdmGL7slS2DJ7gvEJds="
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "semester": {
      "semesterName": "'"${NAME}"'"
    }
  }'

echo
