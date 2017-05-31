#sh scripts/courses/destroy.sh

#!/bin/bash

API="http://localhost:4741"
URL_PATH="/courses"
TOKEN="essVYaDZNtLgxvV4Dk2GYsWaCpCA9HJD8hJv6NtMAG0=--HC6fye0ZsLFwDjLdiK7KWh0p23E1/ec4+aMkQHPAWYA="
ID="592ec4943ff2bd836df95910"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}"

echo
