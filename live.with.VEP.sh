#!/usr/bin/env bash
liveAlive=`ps -ef | grep "MacOS/Live" | grep -v grep | wc -l`
viennaAlive=`ps -ef | grep "Vienna Ensemble Pro" | grep -v grep | wc -l`

if [ $liveAlive = 1 ] && [ $viennaAlive = 0 ]; then
    open '/Applications/Vienna Ensemble Pro/Vienna Ensemble Pro Server (64-bit).app'
fi
