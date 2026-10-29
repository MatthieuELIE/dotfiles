#!/bin/sh

[ -n "$HERDR_ACTIVE_WORKSPACE_ID" ] || exit 0

name=$("${HERDR_BIN_PATH:-herdr}" workspace get "$HERDR_ACTIVE_WORKSPACE_ID" 2>/dev/null |
  jq -r '.result.workspace.label // empty')

[ -n "$name" ] || exit 0

printf ' %s  ' "$name"
