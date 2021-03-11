#!/bin/bash

# Check if the relevant enviroment variable is set

echo "Parameters are: $@"

if [[ ! -v "$APIKEY_GITHUB" ]]; then
    echo "APIKEY_GITHUB is not set"
    exit 1
elif [[ -z "$APIKEY_GITHUB" ]]; then
    echo "APIKEY_GITHUB is set to the empty string"
    exit 1
else
    echo "APIKEY_GITHUB has the value: $DEPLOY_ENV"
fi

