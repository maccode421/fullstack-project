API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/comments"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "comment": {
      "id":2,
      "user_id":1,
      "post_id":1,
      "photo":"",
      "content":"keep the keeper"
    }
  }'

echo
