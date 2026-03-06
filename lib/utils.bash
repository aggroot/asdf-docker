#!/usr/bin/env bash

get_arch() {
  local arch
  arch=$(uname -m)
  case "$arch" in
    x86_64)  echo "x86_64" ;;
    aarch64) echo "aarch64" ;;
    armv7l)  echo "armhf" ;;
    *)
      echo "Unsupported architecture: $arch" >&2
      exit 1
      ;;
  esac
}

get_platform() {
  local platform
  platform=$(uname -s | tr '[:upper:]' '[:lower:]')
  case "$platform" in
    linux)  echo "linux" ;;
    darwin) echo "mac" ;;
    *)
      echo "Unsupported platform: $platform" >&2
      exit 1
      ;;
  esac
}
