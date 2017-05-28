#sh scripts/semesters/show.sh

#!/bin/sh

API="http://localhost:4741"
URL_PATH="/semesters"
#ID of a Specific Page
TOKEN="XvP0cTbCHrKynNTT6m24r9YDxRIXrLqRcLiaRQjhHRY=--WgD2S7NGaANsQ3VbdHB2b+5KpL62uy36sw1kXwome24="
ID="592b4747991132439a1f3e7c"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
