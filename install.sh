#!/bin/bash

# If you are on windows, run this script in git bash.

git clone git@github.com:antonkoetzler/nvim-config

if [[ "$OSTYPE" == "linux-gnu"* || "$OSTYPE" == "darwin"* ]]; then
	rm -rf ~/config/.nvim
	mv nvim-config/ ~/.config/nvim
	echo "nvim configuration installed in ~/.config/nvim"
elif [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" ]]; then
	rm -rf $USERPROFILE/AppData/Local/nvim-data
	mv nvim-config $USERPROFILE/AppData/Local/nvim-data
	echo "nvim configuration installed in $USERPROFILE\AppData\Local\nvim"
else
	echo "Unknown operating system: $OSTYPE"
fi
