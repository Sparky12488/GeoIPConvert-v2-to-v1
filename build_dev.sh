#!/bin/bash

set -e #Exit if any command fails

VERSION=$(date +%Y%m%d-%H%M)
IMAGE_NAME="retrogeo"
APP_VERSION=$(cat VERSION)

echo "Building version $APP_VERSION..."

docker build -t $IMAGE_NAME:latest -t $IMAGE_NAME:$APP_VERSION .


echo "Done! Deployed $APP_VERSION"