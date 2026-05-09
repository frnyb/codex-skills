#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage: install-skills.sh [--codex-home PATH] [--skills-dir PATH]

Copies all skills from this repository into a Codex skills directory.

Options:
  --codex-home PATH  Codex home directory (default: $CODEX_HOME or $HOME/.codex)
  --skills-dir PATH  Explicit destination skills directory
  -h, --help         Show this help text
EOF
}

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd -- "${SCRIPT_DIR}/.." && pwd)"
SOURCE_DIR="${REPO_ROOT}/skills"

CODEX_HOME="${CODEX_HOME:-${HOME}/.codex}"
TARGET_SKILLS_DIR=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    --codex-home)
      CODEX_HOME="${2:?missing value for --codex-home}"
      shift 2
      ;;
    --skills-dir)
      TARGET_SKILLS_DIR="${2:?missing value for --skills-dir}"
      shift 2
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown option: $1" >&2
      usage >&2
      exit 1
      ;;
  esac
done

if [[ -z "${TARGET_SKILLS_DIR}" ]]; then
  TARGET_SKILLS_DIR="${CODEX_HOME}/skills"
fi

if [[ ! -d "${SOURCE_DIR}" ]]; then
  echo "Skills source directory not found: ${SOURCE_DIR}" >&2
  exit 1
fi

mkdir -p "${TARGET_SKILLS_DIR}"

installed=0
for skill_path in "${SOURCE_DIR}"/*; do
  if [[ ! -d "${skill_path}" ]]; then
    continue
  fi

  skill_name="$(basename -- "${skill_path}")"
  destination="${TARGET_SKILLS_DIR}/${skill_name}"

  rm -rf "${destination}"
  cp -R "${skill_path}" "${destination}"
  installed=$((installed + 1))
done

echo "Installed ${installed} skill(s) to ${TARGET_SKILLS_DIR}"
