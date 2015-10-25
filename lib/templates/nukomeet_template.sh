#!/usr/bin/env bash

# regex to validate in commit msg
commit_regex='(/feature:|improv:|fix:|docs:|style:|test:/[a-z\s]+/)'
error_msg="Aborting commit. Your commit message is missing a key words."

if ! grep -iqE "$commit_regex" "$1"; then
    echo "$error_msg" >&2
    exit 1
fi