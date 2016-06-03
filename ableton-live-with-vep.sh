#!/usr/bin/env bash

live="$1"
livedir=`dirname "$live"`

vep=`find "$livedir" -name "*.mframe64"`
open "$vep"
