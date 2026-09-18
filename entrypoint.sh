#!/bin/sh

sh -c "docker run \
  --rm \
  -d \
  -p \"${INPUT_PORT}:9000\" \
  -e MINIO_ROOT_USER=\"${INPUT_USERNAME}\" \
  -e MINIO_ROOT_PASSWORD=\"${INPUT_PASSWORD}\" \
  ${image}:${INPUT_VERSION} \
  server /data --address=0.0.0.0:9000 \
"