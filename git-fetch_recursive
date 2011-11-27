#!/bin/bash
find . -iname .git -type d | sed "s/\(.*\)/pushd \"\1\"; git fetch; popd/" | sh