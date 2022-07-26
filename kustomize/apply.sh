#/bin/bash

STAGE=$1

if [[ "$STAGE" == "" ]]; then 
  echo "No stage specified"
  exit 1
fi
 
kubectl apply -k  overlays/$STAGE
