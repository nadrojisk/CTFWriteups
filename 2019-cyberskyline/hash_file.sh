#/bin/bash

while read -r line; do printf %s "$line" | md5; done < $1 > output.hash
