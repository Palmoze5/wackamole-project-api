curl "http://localhost:4741/scores" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "score": {
      "number": "'"${TEXT}"'"
    }
  }'

echo
