#!/bin/bash
DOTFILES="$(dirname $(realpath $0))"
[ -L ~/.config ] || ln -s $DOTFILES/config ~/.config
grep -q DOTFILES ~/.bashrc || echo "export DOTFILES=$DOTFILES" >> ~/.bashrc
for script in starship venvwrapper ssh local-bin;
do
grep -q $script ~/.bashrc || echo "source $DOTFILES/$script.bash" >> ~/.bashrc
done
python -m pip install --user pipx
