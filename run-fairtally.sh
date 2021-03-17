#!/bin/bash

# Set relevant enviroment variable is set

TIMESTAMP=`date +%Y%m%d-%H%M`

export APIKEY_GITHUB="$1"

echo "APIKEY_GITHUB is set to $APIKEY_GITHUB"

if [[ -z "$APIKEY_GITHUB" ]]; then
    echo "APIKEY_GITHUB is not set"
    exit 1
fi

# Get the data dump from the RSD
#curl https://research-software.nl/api/software > software.json

# Extract the list of URLs
#cat software.json | jq -r '[.[].repositoryURLs.github] | flatten | .[]' > urls.>

# Run fairtally
fairtally -o docs/reports/report-$TIMESTAMP.html -i urls.txt

# Add the link to the output to the index page
echo "[$TIMESTAMP](https://jmaassen.github.io/fairtally-test/reports/report-$TIMESTAMP.html)  " >> docs/index.md

