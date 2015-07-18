#!/bin/sh

grep --color=auto -e "^Plugin" * | awk -f ./list-plugins.awk
