curl "http://localhost:4741/update-joke/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "joke": {
      "joke_input": "'"${TEXT}"'"
    }
  }'

echo
