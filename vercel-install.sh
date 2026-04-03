#!/bin/sh
set -e

FLUTTER_VERSION=3.41.2
FLUTTER_REPO=https://github.com/flutter/flutter.git

require_env() {
  var_name="$1"
  eval "var_value=\${$var_name}"

  if [ -z "$var_value" ]; then
    echo "Missing required Vercel environment variable: $var_name" >&2
    exit 1
  fi
}

create_env_file() {
  require_env SUPABASE_URL
  require_env SUPABASE_ANON_KEY

  cat > .env <<EOF
SUPABASE_URL=$SUPABASE_URL
SUPABASE_ANON_KEY=$SUPABASE_ANON_KEY
RAZORPAY_KEY_ID=${RAZORPAY_KEY_ID:-}
EOF
}

if [ -d flutter ]; then
  cd flutter
  git fetch --depth 1 origin "$FLUTTER_VERSION"
  git checkout "$FLUTTER_VERSION"
  cd ..
else
  git clone --depth 1 --branch "$FLUTTER_VERSION" "$FLUTTER_REPO" flutter
fi

create_env_file

./flutter/bin/flutter config --enable-web
./flutter/bin/flutter pub get
