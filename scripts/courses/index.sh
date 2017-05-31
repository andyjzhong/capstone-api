#sh scripts/courses/index.sh

#!/bin/sh

API="http://localhost:4741"
URL_PATH="/courses"
TOKEN="essVYaDZNtLgxvV4Dk2GYsWaCpCA9HJD8hJv6NtMAG0=--HC6fye0ZsLFwDjLdiK7KWh0p23E1/ec4+aMkQHPAWYA="

# How should we handle this functionality? Allow all people to view?
# Replace this TOKEN with a valid one.
# TOKEN="validTokenHere"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
