
#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/users/${USER_ID}/parties"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "party": {
      "name": "'"${NAME}"'",
      "size": "'"${SIZE}"'",
      "notes": "",
      "est_wait": "10",
      "user_id": "'"${USER_ID}"'"
    }
  }'

echo