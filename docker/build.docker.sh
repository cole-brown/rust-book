#!/bin/bash

APP_NAME="rust-book"
APP_VER="$(date +%Y-%m-%d)"

indent() { sed 's/^/  /'; }

# Build with project root directory as the context.
BUILD_CONTEXT_DIR=$(realpath "$PWD/..")
echo -e "\nBuilding Docker image with context directory of '${BUILD_CONTEXT_DIR}'..."
docker build -t ${APP_NAME}:latest -t ${APP_NAME}:${APP_VER} -f build-files/build.docker.txt $@ ${BUILD_CONTEXT_DIR}
