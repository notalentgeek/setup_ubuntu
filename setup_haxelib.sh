#!/bin/sh

echo "started setup_haxelib.sh"

mkdir ~/haxelib &&
haxelib setup ~/haxelib &&

echo "finished setup_haxelib.sh"