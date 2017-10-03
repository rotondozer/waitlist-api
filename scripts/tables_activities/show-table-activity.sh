#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/table_activity"
curl "${API}${URL_PATH}/${TABLE_NUMBER}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
