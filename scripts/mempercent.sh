#!/usr/bin/bash
echo "mem: "
echo "`free | grep Mem | awk '{printf " %2.1f\n",$3/$2 * 100.0}'`%"
