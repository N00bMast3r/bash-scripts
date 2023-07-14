#!/bin/bash

echo enter username or press enter to use default value

read username

# filename=${1:-$DEFAULT_FILENAME}
echo ${username:-$(whoami)}
