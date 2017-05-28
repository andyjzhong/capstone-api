#sh scripts/semesters/create.sh

#!/bin/sh

API="http://localhost:4741"
URL_PATH="/semesters"
SEMESTERNAME="May 28"
TOKEN="XvP0cTbCHrKynNTT6m24r9YDxRIXrLqRcLiaRQjhHRY=--WgD2S7NGaANsQ3VbdHB2b+5KpL62uy36sw1kXwome24="
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "semester": {
      "semesterName": "'"${SEMESTERNAME}"'"
    }
  }'

echo
