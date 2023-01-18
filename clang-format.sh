#!/bin/bash

workdir=$(cd $(dirname $0); pwd)
logFile=$workdir/clang-format.log

exec & >> $logFile
export PATH=/opt/homebrew/bin/:/usr/local/bin:$PATH
file=`osascript $workdir/get_current_xcode_file.scpt 2>&1`
time=$(date "+%Y-%m-%d %H:%M:%S")
echo $time $file >> $logFile
clang-format -i -style=file:"${workdir}/.clang-format" $file