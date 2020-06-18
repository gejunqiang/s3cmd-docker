#!/bin/bash

export AWS_ACCESS_KEY_ID="$ACCESS_KEY"
export AWS_SECRET_ACCESS_KEY="$SECRET_KEY"
export HOST_BUCKET="$HOST_BUCKET"

s3cmd(){
  local SSL_PARAM="--no-ssl"
  [[ "${SSL,,}" =~ ^(true|t|yes|y|on|1|enable|enabled)$ ]] && {
      SSL_PARAM=""
  }
  /root/s3cmd-2.1.0/s3cmd --host="$ENDPOINT" --host-bucket="${HOST_BUCKET:-$ENDPOINT}" --region="$REGION" "$SSL_PARAM" "$@"
}

s3cmd "$@"