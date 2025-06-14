#!bin/bash
ALL_POKEMON=$(curl -sL https://pokeapi.co/api/v2/pokemon?limit=10 | jq ".results[].name" -r)
for pokemon in $ALL_POKEMON; do
    echo "The Name Pokemon is: $pokemon"
done
