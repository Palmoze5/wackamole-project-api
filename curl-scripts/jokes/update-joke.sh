curl "http://localhost:4741/jokes" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "joke": {
      "text": "'"${TEXT}"'"
    }
  }'

echo
