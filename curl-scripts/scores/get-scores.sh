curl "http://localhost:4741/scores" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
