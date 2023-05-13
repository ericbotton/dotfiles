#!/bin/bash

set -u
set -e

function get_layouts()
{
    autorandr | grep " (detected)"
    autorandr | grep --invert-match " (detected)"
}

function main()
{
    local layouts="$(get_layouts)"

    local layout=$( (echo "${layouts}")  | rofi -lines 4 -dmenu -p "Layout:")
    local matching=$( (echo "${layouts}") | grep "^${layout}$")

	autorandr --load $matching && polybar_restart
}

main
