#!/usr/bin/env bash

export PROFILE_NAME="Kanagawa Dragon"

export COLOR_01="#0D0C0C"           # Black (Host)
export COLOR_02="#C4746E"           # Red (Syntax string)
export COLOR_03="#8A9A7B"           # Green (Command)
export COLOR_04="#C4B28A"           # Yellow (Command second)
export COLOR_05="#8BA4B0"           # Blue (Path)
export COLOR_06="#A292A3"           # Magenta (Syntax var)
export COLOR_07="#8EA4A2"           # Cyan (Prompt)
export COLOR_08="#C8C093"           # White

export COLOR_09="#A6A69C"           # Bright Black
export COLOR_10="#E46876"           # Bright Red (Command error)
export COLOR_11="#87A987"           # Bright Green (Exec)
export COLOR_12="#E6C384"           # Bright Yellow
export COLOR_13="#7FB4CA"           # Bright Blue (Folder)
export COLOR_14="#938AA9"           # Bright Magenta
export COLOR_15="#7AA89F"           # Bright Cyan
export COLOR_16="#C5C9C5"           # Bright White

export BACKGROUND_COLOR="#181616"   # Background
export FOREGROUND_COLOR="#C5C9C5"   # Foreground (Text)

export CURSOR_COLOR="#C8C093" # Cursor

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
