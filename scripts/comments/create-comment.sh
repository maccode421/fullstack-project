API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/comments"
curl "${API}${URL_PATH}/" \
  --include \
  --request POST \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "comment": {
      "user_id": "'"${USER_ID}"'",
      "post_id": "'"${POST_ID}"'",
      "photo": "'"${PHOTO}"'",
      "content": "'"${CONTENT}"'"
    }
  }'

echo
