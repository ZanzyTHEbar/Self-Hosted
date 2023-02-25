#!/bin/bash

# take in a param for the path to check
# if no param is passed, default to /
path=${1:-/}

size=${2:-MG}

sudo du -cha --max-depth=1 $path | grep -E "^[0-9\.]*[$size]"