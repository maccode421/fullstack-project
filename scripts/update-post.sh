API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/posts"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "post": {
      "id":2,
      "user_id":1,
      "photo":null,
      "catch_date":"2017-07-07",
      "content":"whatever is whatever"
    }
  }'

echo
