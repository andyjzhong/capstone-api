#sh scripts/auth/sign-up.sh

#!/bin/bash

API="http://localhost:4741"
URL_PATH="/sign-up"
# AZ: Added EMAIL and PASSWORD in order to speed up the curl script testing process.
EMAIL="capstone"
PASSWORD="capstone"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'

echo
