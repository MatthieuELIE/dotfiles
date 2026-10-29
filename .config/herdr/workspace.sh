#!/bin/sh

[ -n "$HERDR_ACTIVE_WORKSPACE_ID" ] || exit 0

HERDR="${HERDR_BIN_PATH:-herdr}"

name=$("$HERDR" workspace get "$HERDR_ACTIVE_WORKSPACE_ID" 2>/dev/null \
  | jq -r '.result.workspace.label // .result.label // empty')


[ -n "$name" ] && printf ' %s  ' "$name"
