curl https://localhost:4741/games -XPOST \
  --header 'Content-Type: application/json' \
  --include --data '
  { "game": {
    "comment": "'"${TEXT}"'"
      }
    }
  '
