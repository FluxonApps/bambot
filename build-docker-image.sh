#!/bin/sh

# When building on Apple silicon we need to target x86 for Cloud Run.

docker build \
  --platform=linux/amd64 \
  --push \
  -t us-central1-docker.pkg.dev/fluxon-bambot/fluxon-bambot/bambot \
  .