#sh scripts/courses/index.sh

#!/bin/sh

API="http://localhost:4741"
URL_PATH="/courses"
TOKEN="ykNXZChjpanoav0aoSA6OT95J0UPq+lXBa1XZc+zrNA=--yXtrkbx0HJFyt4ws63VH4a3pxtKzUROJIeKWBFBz9ds="

# How should we handle this functionality? Allow all people to view?
# Replace this TOKEN with a valid one.
# TOKEN="validTokenHere"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
