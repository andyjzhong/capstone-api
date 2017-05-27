#sh scripts/semesters/create.sh

#!/bin/sh

API="http://localhost:4741"
URL_PATH="/semesters"
SEMESTERNAME="Fall 2017"
TOKEN="tstqty8m7VQYzhZydGT5deymxvlgEgqzv94fZXBEdGI=--ysL/lJpfjJrrCMI/hjUrJUmn3LBWzTGr2A8A5qbKsOg="
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
