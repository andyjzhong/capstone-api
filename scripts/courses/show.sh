#sh scripts/courses/show.sh

#!/bin/sh

API="http://localhost:4741"
URL_PATH="/courses"
#ID of a Specific Page
TOKEN="XPUp509e89kiUDnIPlPqhUvzxP4caFABKMKQ0IUXYXU=--7/7hH5/aeAYveevmMWXis314ZdmGL7slS2DJ7gvEJds="
ID="592d80feb0348c0497d927c8"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo