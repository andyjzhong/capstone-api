#sh scripts/semesters/update.sh

#!/bin/bash

API="http://localhost:4741"
URL_PATH="/semesters"
SEMESTERNAME="Update Test"
TOKEN="XvP0cTbCHrKynNTT6m24r9YDxRIXrLqRcLiaRQjhHRY=--WgD2S7NGaANsQ3VbdHB2b+5KpL62uy36sw1kXwome24="
ID="592b3be0991132439a1f3e76"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "semester": {
      "semesterName": "'"${SEMESTERNAME}"'"
    }
  }'

echo
