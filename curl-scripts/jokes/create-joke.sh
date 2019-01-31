curl "http://localhost:4741/create-jokes" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "joke": {
      "joke_input": "'"${TEXT}"'"
    }
  }'

echo
