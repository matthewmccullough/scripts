#!/bin/bash

newfilehash=$(openssl sha1 $1)
existingsha1=$(cat $2)
if [ "${existingsha1}" = "${newfilehash}" ]; then echo "Key is valid."; else echo "Key is _not_ valid!!!"; fi