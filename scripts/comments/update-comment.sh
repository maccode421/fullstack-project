API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/comments"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "comment": {
      "id": "'"${ID}"'",
      "user_id": "'"${USER_ID}"'",
      "post_id": "'"${POST_ID}"'",
      "photo": "'"${POST}"'",
      "content": "'"${CONTENT}"'"
    }
  }'

echo
