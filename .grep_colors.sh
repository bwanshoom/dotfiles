#!/bin/bash

# skip this file if the terminal can't support at least eight colors
if [[ $(tput colors 2>/dev/null) -lt 8 ]]; then
    return
fi

: ${solarized:=dark}

export solarized

# -----------------------------------------------------------------------------
# setup
# -----------------------------------------------------------------------------

colors=(null black red green yellow blue magenta cyan white)

   null="0"
  black="30"
    red="31"
  green="32"
 yellow="33"
   blue="34"
magenta="35"
   cyan="36"
  white="37"

if [[ $solarized =~ dark|light ]]; then
colors+=(base03 base02 base01 base00 base0 base1 base2 base3 orange violet)
    base03="1;${black}"
    base02="0;${black}"
    base01="1;${green}"
    base00="1;${yellow}"
     base0="1;${blue}"
     base1="1;${cyan}"
     base2="0;${white}"
     base3="1;${white}"
    orange="1;${red}"
    violet="1;${magenta}"
fi

# -----------------------------------------------------------------------------
# preferred colors
# -----------------------------------------------------------------------------

colors+=(color_reset color_true color_false color_user color_hi color_2d)

color_reset="${null}"

color_true="${green}"
color_false="${red}"

color_user="${blue}" # see prompt.bash

case $solarized in
    dark)
        color_hi="${base2}" # highlight color
        color_2d="${base01}" # secondary color
        ;;
    light)
        color_hi="${base02}"
        color_2d="${base1}"

        color_true="${cyan}"
        color_false="${orange}"
        ;;
    *)
        color_hi="${brwhite}"
        color_2d="${brblack}"
        color_user="${brblue}"
        ;;
esac

export colors ${colors[@]}

# -----------------------------------------------------------------------------
# grep
# -----------------------------------------------------------------------------

export GREP_COLORS=

GREP_COLORS+="sl=${null}:" # whole selected lines
GREP_COLORS+="cx=${color_2d}:" # whole context lines
GREP_COLORS+="mt=${orange}:" # any matching text
GREP_COLORS+="ms=4;${orange}:" # matching text in a selected line
GREP_COLORS+="mc=${orange}:" # matching text in a context line
GREP_COLORS+="fn=${color_2d}:" # filenames
GREP_COLORS+="ln=${blue}:" # line numbers
GREP_COLORS+="bn=${cyan}:" # byte offsets
GREP_COLORS+="se=${color_hi}" # separators

export GREP_COLORS
# deprecated
export GREP_COLOR="4;${orange}"
