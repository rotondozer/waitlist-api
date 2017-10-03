#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/tables"
curl "${API}${URL_PATH}/${PARTY_SIZE}/match" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
