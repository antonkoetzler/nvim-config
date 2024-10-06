#!/bin/bash

# If you are on windows, run this script in git bash.

git clone https://github.com/antonkoetzler/nvim-config.git

if [[ "$OSTYPE" == "linux-gnu"* || "$OSTYPE" == "darwin"* ]]; then
	rm -rf ~/config/.nvim
	mv nvim-config/ ~/.config/nvim
	echo "nvim configuration installed in ~/.config/nvim"
elif [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" ]]; then
	rm -rf $USERPROFILE/AppData/Local/nvim
	mv nvim-config $USERPROFILE/AppData/Local/nvim
	echo "nvim configuration installed in $USERPROFILE\AppData\Local\nvim"
else
	echo "Unknown operating system: $OSTYPE"
fi
