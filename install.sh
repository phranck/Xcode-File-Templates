#!/usr/bin/env sh

# ========================================
# Configuration
# ========================================

PWD=$(pwd)
TEMPLATES_DIR="${HOME}/Library/Developer/Xcode/Templates/File Templates/Multiplatform/Swift"
DOWNLOAD_DIR="${HOME}/.woodbytes"


# ========================================
# ANSI Color escape codes:
# ========================================

# Black        0;30     Dark Gray     1;30
# Red          0;31     Light Red     1;31
# Green        0;32     Light Green   1;32
# Brown/Orange 0;33     Yellow        1;33
# Blue         0;34     Light Blue    1;34
# Purple       0;35     Light Purple  1;35
# Cyan         0;36     Light Cyan    1;36
# Light Gray   0;37     White         1;37

BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LGRAY='\033[0;37m'

DGRAY='\033[1;30m'
LRED='\033[1;31m'
LGREEN='\033[1;32m'
YELLOW='\033[1;33m'
LBLUE='\033[1;34m'
LPURPLE='\033[1;35m'
LCYAN='\033[1;36m'
WHITE='\033[1;37m'

NC='\033[0m' # No Color


# ========================================
# Here we go...
# ========================================

echo -e "${YELLOW}Installing templates to '${TEMPLATES_DIR}'${NC}"

printf "%-30s" "Downloading templates..."
mkdir -p "${DOWNLOAD_DIR}"
git clone https://github.com/phranck/Xcode-File-Teplates.git "${DOWNLOAD_DIR}" >/dev/null 2>&1
printf "${GREEN}[done]${NC}\n"

printf "%-30s" "Installing templates..."
mkdir -p "${TEMPLATES_DIR}"
cd "${DOWNLOAD_DIR}"
cp -R ./Templates/*.xctemplate "${TEMPLATES_DIR}" >/dev/null 2>&1
printf "${GREEN}[done]${NC}\n"

cd ${PWD}
rm -rf ${DOWNLOAD_DIR} 2>&1

echo
echo "🎉 Xcode File Templates has been successfully installed."
echo

exit 0