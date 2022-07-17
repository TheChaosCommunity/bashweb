#!bin/bash
# this is the fancy-schmancy ui for bashweb.

# ask for the thing to search
echo "What would you like to search for?"
read -r search

# send it over to api.sh and get the results
source api.sh "$search"

# print the results
echo "Here are the results:"
echo "-------------------"
while read -r line; do
    echo "$line"
done
echo "-------------------"
echo "Press any key to exit."
read -r -n 1 -s

# exit the program
exit 0
