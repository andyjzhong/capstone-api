#sh scripts/semesters/index.sh

#!/bin/sh

API="http://localhost:4741"
URL_PATH="/semesters"
TOKEN="XPUp509e89kiUDnIPlPqhUvzxP4caFABKMKQ0IUXYXU=--7/7hH5/aeAYveevmMWXis314ZdmGL7slS2DJ7gvEJds="

# How should we handle this functionality? Allow all people to view?
# Replace this TOKEN with a valid one.
# TOKEN="validTokenHere"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
