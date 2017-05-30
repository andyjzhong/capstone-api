#sh scripts/courses/update.sh

#!/bin/bash

API="http://localhost:4741"
URL_PATH="/courses"
NAME="Updated Course!"
TOKEN="XPUp509e89kiUDnIPlPqhUvzxP4caFABKMKQ0IUXYXU=--7/7hH5/aeAYveevmMWXis314ZdmGL7slS2DJ7gvEJds="
ID="592d8098b0348c0497d927c7"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "course": {
      "courseName": "'"${NAME}"'"
    }
  }'

echo
