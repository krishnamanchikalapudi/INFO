#!/bin/bash

. ../config.sh

. ./appinfo.sh

printf "\n%s\n\n" "----------- [START] DEPLOY: ${START_DATE_TIME}"
printf "\n%s\t" "App Name: ${APP_YAML}"

kubectl create -f ${APP_YAML} --record=true --validate=true

sleep 2


# open dashboard
. ../config-end.sh
printf "\n%s\n\n" "----------- [END] DEPLOY: ${END_DATE_TIME}"
