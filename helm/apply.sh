#/bin/bash

STAGE=$1

if [[ "$STAGE" == "" ]]; then 
  echo "No stage specified"
  exit 1
fi

helm upgrade --install app chart --set stage=$STAGE  
