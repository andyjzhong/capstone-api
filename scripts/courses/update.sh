#sh scripts/courses/update.sh

#!/bin/bash

API="http://localhost:4741"
URL_PATH="/courses"
NAME="This will sadly be deleted later."
TOKEN="ykNXZChjpanoav0aoSA6OT95J0UPq+lXBa1XZc+zrNA=--yXtrkbx0HJFyt4ws63VH4a3pxtKzUROJIeKWBFBz9ds="
ID="592d8098b0348c0497d927c7"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "course": {
      "title": "'"${NAME}"'"
    }
  }'

echo
