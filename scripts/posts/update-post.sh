API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/posts"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "post": {
      "id": "'"${ID}"'",
      "user_id": "'"${USER_ID}"'",
      "photo": "'"${PHOTO}"'",
      "catch_date": "'"${CATCH_DATE}"'",
      "content": "'"${CONTENT}"'"
    }
  }'

echo
