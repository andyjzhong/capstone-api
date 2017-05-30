#sh scripts/semesters/destroy.sh

#!/bin/bash

API="http://localhost:4741"
URL_PATH="/semesters"
TOKEN="XPUp509e89kiUDnIPlPqhUvzxP4caFABKMKQ0IUXYXU=--7/7hH5/aeAYveevmMWXis314ZdmGL7slS2DJ7gvEJds="
ID="592d8535b556120ab19caeba"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}"

echo
