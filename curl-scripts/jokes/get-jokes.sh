curl "http://localhost:4741/get-jokes" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
