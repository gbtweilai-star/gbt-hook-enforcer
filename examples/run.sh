#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_hook_enforcer info
PYTHONPATH=src python -m gbt_hook_enforcer check --payload '{}'
PYTHONPATH=src python -m gbt_hook_enforcer run   --payload '{}'
