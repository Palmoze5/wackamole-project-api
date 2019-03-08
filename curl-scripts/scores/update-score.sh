curl "http://localhost:4741/scores/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "score": {
      "number": "'"${TEXT}"'"
    }
  }'

echo
