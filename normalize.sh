#!/bin/bash

set -euo pipefail

tr -s '/\\' '/' < ~/Documents/Blizzard/listfile/listfile.txt \
    | tr '[:upper:]' '[:lower:]' | tr -d '\015' \
    | sort -u \
    | grep -vi .ds_store \
	   > ~/Documents/Blizzard/listfile/listfile.tmp

mv ~/Documents/Blizzard/listfile/listfile.tmp \
   ~/Documents/Blizzard/listfile/listfile.txt
