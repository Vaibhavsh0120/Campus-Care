#!/bin/sh
set -e

FLUTTER_VERSION=3.41.2
FLUTTER_REPO=https://github.com/flutter/flutter.git

if [ -d flutter ]; then
  cd flutter
  git fetch --depth 1 origin "$FLUTTER_VERSION"
  git checkout "$FLUTTER_VERSION"
  cd ..
else
  git clone --depth 1 --branch "$FLUTTER_VERSION" "$FLUTTER_REPO" flutter
fi

./flutter/bin/flutter config --enable-web
./flutter/bin/flutter pub get
