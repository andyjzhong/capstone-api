#sh scripts/semesters/update.sh

#!/bin/bash

API="http://localhost:4741"
URL_PATH="/semesters"
SEMESTERNAME="Summer 2017"
TOKEN="tstqty8m7VQYzhZydGT5deymxvlgEgqzv94fZXBEdGI=--ysL/lJpfjJrrCMI/hjUrJUmn3LBWzTGr2A8A5qbKsOg="
ID="5929a74beeee8da4e94ebd5e"
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
