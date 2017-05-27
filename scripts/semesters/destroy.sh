#sh scripts/semesters/destroy.sh

#!/bin/bash

API="http://localhost:4741"
URL_PATH="/semesters"
TOKEN="tstqty8m7VQYzhZydGT5deymxvlgEgqzv94fZXBEdGI=--ysL/lJpfjJrrCMI/hjUrJUmn3LBWzTGr2A8A5qbKsOg="
ID="5929a74beeee8da4e94ebd5e"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}"

echo
