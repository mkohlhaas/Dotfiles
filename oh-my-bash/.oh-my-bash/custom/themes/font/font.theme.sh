#! bash oh-my-bash.module
#
# One line prompt showing the following configurable information
# for git:
# time (virtual_env) username@hostname pwd git_char|git_branch git_dirty_status|→
#
# The → arrow shows the exit status of the last command:
# - bold green: 0 exit status
# - bold red: non-zero exit status
#
# Example outside git repo:
# 07:45:05 user@host ~ →
#
# Example inside clean git repo:
# 07:45:05 user@host .oh-my-bash ±|master|→
#
# Example inside dirty git repo:
# 07:45:05 user@host .oh-my-bash ±|master ✗|→
#
# Example with virtual environment:
# 07:45:05 (venv) user@host ~ →
#

SCM_NONE_CHAR=''
SCM_THEME_PROMPT_DIRTY=" ${_omb_prompt_brown}✗"
SCM_THEME_PROMPT_CLEAN=""
SCM_THEME_PROMPT_PREFIX="${_omb_prompt_green}|"
SCM_THEME_PROMPT_SUFFIX="${_omb_prompt_green}|"
SCM_GIT_SHOW_MINIMAL_INFO=true

CLOCK_THEME_PROMPT_PREFIX=''
CLOCK_THEME_PROMPT_SUFFIX=' '
THEME_SHOW_CLOCK=${THEME_SHOW_CLOCK:-"true"}
THEME_CLOCK_COLOR=${THEME_CLOCK_COLOR:-"$_omb_prompt_bold_navy"}
THEME_CLOCK_FORMAT=${THEME_CLOCK_FORMAT:-"%I:%M:%S"}

OMB_PROMPT_VIRTUALENV_FORMAT='(%s) '
OMB_PROMPT_CONDAENV_FORMAT='(%s) '
OMB_PROMPT_SHOW_PYTHON_VENV=${OMB_PROMPT_SHOW_PYTHON_VENV:=true}

function _omb_theme_PROMPT_COMMAND() {
  # This needs to be first to save last command return code
  local RC="$?"

  local hostname="${_omb_prompt_bold_gray}\u@\h"
  local python_venv
  _omb_prompt_get_python_venv
  python_venv=$_omb_prompt_white$python_venv
  local spack_env
  _omb_prompt_get_spack_env
  spack_env=$_omb_prompt_white$spack_env

  local go_info=""

  # 1. Verify Go is installed locally
  if _omb_util_command_exists go; then

    # 2. Check if the current folder or any parent folder is a Go project
    local check_dir="$PWD"
    local is_go_project=false

    while [[ "$check_dir" != "" ]]; do
      if [[ -f "$check_dir/go.mod" || -f "$check_dir/go.work" || -n $(find "$check_dir" -maxdepth 1 -name "*.go" 2>/dev/null) ]]; then
        is_go_project=true
        break
      fi
      # Move one folder level up the tree, stop at root
      [[ "$check_dir" == "/" ]] && break
      check_dir="$(dirname "$check_dir")"
    done

    # 3. Only extract version if a Go project marker was located
    if [ "$is_go_project" = true ]; then
      local full_version=$(go version | awk '{print $3}' | sed 's/go//')
      go_info=" [${full_version%%-*}]"
    fi
  fi

  # Set return status color
  if [[ ${RC} == 0 ]]; then
    ret_status="${_omb_prompt_bold_green}"
  else
    ret_status="${_omb_prompt_bold_brown}"
  fi

  # Append new history lines to history file
  history -a

  PS1="$(clock_prompt)$spack_env$python_venv${hostname} ${_omb_prompt_bold_teal}\W${go_info} $(scm_prompt_char_info)${ret_status}→ ${_omb_prompt_normal}"
}

_omb_util_add_prompt_command _omb_theme_PROMPT_COMMAND
