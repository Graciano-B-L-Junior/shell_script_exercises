#!/bin/bash
echo "##########################"
echo "VERIFYING IF SOME ENVIRONMENT VARIABLES ARE SET"
echo "##########################"
echo ""

if [[ -z "${DB_HOST}" ]] || [[ -z "${DB_USER}" ]] || [[ -z "${DB_PASSWORD}" ]];
then
    echo "Some environment variables are not set"
    exit 1
fi

echo "All environment variables are set"
echo "" 