#!/bin/bash

# Set relevant enviroment variable is set

export APIKEY_GITHUB="$1"

echo "APIKEY_GITHUB is set to $APIKEY_GITHUB"

if [[ -z "$APIKEY_GITHUB" ]]; then
    echo "APIKEY_GITHUB is not set"
    exit 1
fi

fairtally -o reports/report-${{steps.timestamp.outputs.date}}.html -i urls.txt
