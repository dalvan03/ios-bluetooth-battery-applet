#!/usr/bin/env bash
set -euo pipefail

UUID="ios-bluetooth-battery@dalvan"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_DIR="${SCRIPT_DIR}/${UUID}"
TARGET_DIR="${HOME}/.local/share/cinnamon/applets/${UUID}"

mkdir -p "${HOME}/.local/share/cinnamon/applets"

if [ "${1:-}" = "--symlink" ] || [ "${1:-}" = "-s" ]; then
    rm -rf "${TARGET_DIR}"
    ln -s "${SOURCE_DIR}" "${TARGET_DIR}"
    echo "✔ Symlink de desenvolvimento criado em: ${TARGET_DIR}"
else
    rm -rf "${TARGET_DIR}"
    cp -r "${SOURCE_DIR}" "${TARGET_DIR}"
    echo "✔ Applet instalado em: ${TARGET_DIR}"
fi

echo "Para ativar no painel do Cinnamon:"
echo "  1. Clique com o botão direito no Painel (barra) -> 'Applets'"
echo "  2. Selecione 'iOS Bluetooth Battery Monitor' e clique no botão (+)"
