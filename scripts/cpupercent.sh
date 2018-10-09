#!/usr/bin/bash
echo 'cpu: '
echo "`grep 'cpu ' /proc/stat | awk '{printf " %2.1f\n",($2+$4)*100/($2+$4+$5)}'`%"
