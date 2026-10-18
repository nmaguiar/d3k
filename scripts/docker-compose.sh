#!/bin/sh
# Compose plugin compatibility, retaining standalone version flags and argv.
case "${1-}" in
  --version|-v) shift; set -- version "$@" ;;
esac
exec docker compose "$@"
