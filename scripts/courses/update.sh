#sh scripts/courses/update.sh

#!/bin/bash

API="http://localhost:4741"
URL_PATH="/courses"
NAME="This will sadly be deleted later."
TOKEN="essVYaDZNtLgxvV4Dk2GYsWaCpCA9HJD8hJv6NtMAG0=--HC6fye0ZsLFwDjLdiK7KWh0p23E1/ec4+aMkQHPAWYA="
ID="592ec4943ff2bd836df95910"
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
