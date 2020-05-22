#!/bin/env bash

#########################################################################
# File Name: weather.sh
# Created Time: 2020-05-23
# Author: zachary
# Last Modified: 2020-05-23 00:50:47
# Description: show weather
#########################################################################

_w=$(curl -s wttr.in?format=1)
echo ${_w}

