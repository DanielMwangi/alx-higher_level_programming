#!/bin/bash
# Assign the first argument passed to the script to a variable
url=$1
# Use curl to send a request to the URL and pipe the response to wc to count the number of bytes in the response body
size=$(curl -sL $url -w "%{size_download}" -o /dev/null)
# Print the size of the response body in bytes
echo "Size of response body: $size bytes"
