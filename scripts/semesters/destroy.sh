#sh scripts/semesters/destroy.sh

#!/bin/bash

API="http://localhost:4741"
URL_PATH="/semesters"
TOKEN="XvP0cTbCHrKynNTT6m24r9YDxRIXrLqRcLiaRQjhHRY=--WgD2S7NGaANsQ3VbdHB2b+5KpL62uy36sw1kXwome24="
ID="592b3be0991132439a1f3e76"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}"

echo
