#!/usr/bin/env bash

export PROFILE_NAME="Selenized Dark"

export COLOR_01="#184956"           # Black (Host)
export COLOR_02="#fa5750"           # Red (Syntax string)
export COLOR_03="#75b938"           # Green (Command)
export COLOR_04="#dbb32d"           # Yellow (Command second)
export COLOR_05="#4695f7"           # Blue (Path)
export COLOR_06="#f275be"           # Magenta (Syntax var)
export COLOR_07="#41c7b9"           # Cyan (Prompt)
export COLOR_08="#72898f"           # White

export COLOR_09="#2d5b69"           # Bright Black
export COLOR_10="#ff665c"           # Bright Red (Command error)
export COLOR_11="#84c747"           # Bright Green (Exec)
export COLOR_12="#ebc13d"           # Bright Yellow
export COLOR_13="#58a3ff"           # Bright Blue (Folder)
export COLOR_14="#ff84cd"           # Bright Magenta
export COLOR_15="#53d6c7"           # Bright Cyan
export COLOR_16="#cad8d9"           # Bright White

export BACKGROUND_COLOR="#103c48"   # Background
export FOREGROUND_COLOR="#adbcbc"   # Foreground (Text)

export CURSOR_COLOR="#cad8d9" # Cursor

# | ===========================================================================
# | Apply Colors
# | ===========================================================================
SCRIPT_PATH="${SCRIPT_PATH:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
PARENT_PATH="$(dirname "${SCRIPT_PATH}")"

# Allow developer to change url to forked url for easier testing
# IMPORTANT: Make sure you export this variable if your main shell is not bash
BASE_URL=${BASE_URL:-"https://raw.githubusercontent.com/Gogh-Co/Gogh/master"}


if [[ -e "${PARENT_PATH}/apply-colors.sh" ]]; then
  bash "${PARENT_PATH}/apply-colors.sh"
else
  if [[ "$(uname)" = "Darwin" ]]; then
    # OSX ships with curl and ancient bash
    bash -c "$(curl -so- "${BASE_URL}/apply-colors.sh")"
  else
    # Linux ships with wget
    bash -c "$(wget -qO- "${BASE_URL}/apply-colors.sh")"
  fi
fi
