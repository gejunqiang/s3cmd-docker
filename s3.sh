#!/bin/bash

export AWS_ACCESS_KEY_ID="$ACCESS_KEY"
export AWS_SECRET_ACCESS_KEY="$SECRET_KEY"
export AWS_DEFAULT_REGION="$REGION"

s3cmd(){
  local SSL_PARAM="--no-ssl"
  [[ "${SSL,,}" =~ ^(true|t|yes|y|on|1|enable|enabled)$ ]] && {
      SSL_PARAM=""
  }
  /root/s3cmd-2.1.0/s3cmd --host="$ENDPOINT" --host-bucket="$ENDPOINT" "$SSL_PARAM" "$@"
}

s3cmd "$@"