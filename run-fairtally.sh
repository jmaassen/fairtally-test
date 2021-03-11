#!/bin/bash

# Set relevant enviroment variable is set

export APIKEY_GITHUB=$1

if [[ ! -v "$APIKEY_GITHUB" ]]; then
    echo "APIKEY_GITHUB is not set"
    exit 1
elif [[ -z "$APIKEY_GITHUB" ]]; then
    echo "APIKEY_GITHUB is set to the empty string"
    exit 1
else
    echo "APIKEY_GITHUB has the value: $DEPLOY_ENV"
fi

fairtally -o reports/report-${{steps.timestamp.outputs.date}}.html -i urls.txt
