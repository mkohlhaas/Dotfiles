#!/usr/bin/env bash

[[ $(mpc --host 192.168.0.38 status) =~ repeat:[[:space:]](.*)[[:space:]]random ]] && repeat=${BASH_REMATCH[1]}
[[ $(mpc --host 192.168.0.38 status) =~ single:[[:space:]](.*)[[:space:]]consume ]] && single=${BASH_REMATCH[1]}

case $repeat$single in
    *on*on*) result_icon="" ;;
    *on*off*) result_icon="" ;;
esac

echo "" $result_icon
