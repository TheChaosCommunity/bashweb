#!bin/bash
# this is the bit that actually makes the searx api call
# and returns the results

url="https://searx.be/search/?q=$1&format=json"
curl -s "$url" | jq -r '.results[].url' | head -n 10 | while read -r line; do
    echo "$line"
done