#!/usr/bin/env bash
# Developer: Hamdy Abou El Anein
# Contact: info@daylightlinux.ch
# SPDX-License-Identifier: GPL-3.0-only
set -euo pipefail
script="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/cow.bsh"
bash -n "$script"
bash "$script" --help | grep -q Usage
if bash "$script" --unknown >/dev/null 2>&1; then
  echo "Expected invalid argument to fail" >&2
  exit 1
fi
echo "Cowsay smoke tests passed"
