#!/usr/bin/env zsh
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

if [ ! -e ~/.zshlocal ]; then
	ZSHLOCAL="${ZDOTDIR:-$HOME}"/.zprezto/zshlocal-sample
	echo "No zshlocal found -- copying sample"
	if [ -f "${ZSHLOCAL}" ]; then
		cp -f "${ZSHLOCAL}" ~/.zshlocal
	else
		echo "Error: No ${ZSHLOCAL} file exists!"
	fi
else
	echo "Not overwriting existing ~/.zshlocal"
fi
