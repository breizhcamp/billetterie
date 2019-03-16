#!/bin/bash

HERE=$(dirname "$(readlink -f "$0")")
source "$HERE/launch-common.sh"

cd "$HERE/themes"
nageru $COMMON_ARGS \
  -c 4 \
  --output-card 3 \
  --flat-audio \
  --input-mapping="$HERE/camaaloth2.mapping" \
  "$@"
