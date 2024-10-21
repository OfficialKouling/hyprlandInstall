#!/usr/bin/env bash

killall swhks

swhks & pkexec swhkd -c /home/kouling/.config/sxhkd/sxhkdrc 
