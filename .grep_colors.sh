#!/bin/bash

# skip this file if the terminal can't support at least eight colors
if [[ $(tput colors 2>/dev/null) -lt 8 ]]; then
    return
fi

# -----------------------------------------------------------------------------
# setup
# -----------------------------------------------------------------------------
null="0"
black="30"
red="31"
green="32"
yellow="33"
blue="34"
purple="35"
cyan="36"
gray="37"
dull_gray="90"
br_red="91"
br_green="92"
br_yellow="93"
dull_blue="94"
magenta="95"
br_cyan="96"
white="97"
orange="1;${red}"
violet="1;${magenta}"

# -----------------------------------------------------------------------------
# grep
# -----------------------------------------------------------------------------

export GREP_COLORS=

GREP_COLORS+="sl=${null}:" # whole selected lines
GREP_COLORS+="cx=${green}:" # whole context lines
GREP_COLORS+="mt=${orange}:" # any matching text
GREP_COLORS+="ms=4;${orange}:" # matching text in a selected line
GREP_COLORS+="mc=${orange}:" # matching text in a context line
GREP_COLORS+="fn=${br_cyan}:" # filenames
GREP_COLORS+="ln=${blue}:" # line numbers
GREP_COLORS+="bn=${cyan}:" # byte offsets
GREP_COLORS+="se=${purple}" # separators

export GREP_COLORS
# deprecated
export GREP_COLOR="4;${orange}"
