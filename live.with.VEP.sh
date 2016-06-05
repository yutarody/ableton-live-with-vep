#!/usr/bin/env bash
liveAlive=`ps -ef | grep "MacOS/Live" | grep -v grep | wc -l`
viennaAlive=`ps -ef | grep "Vienna Ensemble Pro" | grep -v grep | wc -l`
curpj=`cat "$HOME/Library/Preferences/Ableton/Live 9.6.1/Log.txt" | grep -i project | grep -o '/V.*Project' | sed -e s/\%20/\ /`
#als=`find "$curpj" -depth 1 -name "*.als"`
vep=`find "$curpj" -name "*.mframe64"`

if [ $liveAlive = 1 ] && [ $viennaAlive = 0 ]; then
    open '/Applications/Vienna Ensemble Pro/Vienna Ensemble Pro Server (64-bit).app'
    open "$vep"
fi
