#!/usr/bin/env bash

export PROFILE_NAME="Miramare"

export COLOR_01="#242021"           # Black (Host)
export COLOR_02="#e68183"           # Red (Syntax string)
export COLOR_03="#a7c080"           # Green (Command)
export COLOR_04="#d9bb80"           # Yellow (Command second)
export COLOR_05="#89beba"           # Blue (Path)
export COLOR_06="#d3a0bc"           # Magenta (Syntax var)
export COLOR_07="#87c095"           # Cyan (Prompt)
export COLOR_08="#d8caac"           # White

export COLOR_09="#444444"           # Bright Black
export COLOR_10="#e39b7b"           # Bright Red (Command error)
export COLOR_11="#a7c080"           # Bright Green (Exec)
export COLOR_12="#d9bb80"           # Bright Yellow
export COLOR_13="#89beba"           # Bright Blue (Folder)
export COLOR_14="#d3a0bc"           # Bright Magenta
export COLOR_15="#87c095"           # Bright Cyan
export COLOR_16="#e6d6ac"           # Bright White

export BACKGROUND_COLOR="#2a2426"   # Background
export FOREGROUND_COLOR="#e6d6ac"   # Foreground (Text)

export CURSOR_COLOR="#e6d6ac" # Cursor

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
