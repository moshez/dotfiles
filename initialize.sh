#!/bin/bash
pipx list > /dev/null || python -m pip install --user pipx
pipx install dotmoshez
~/.local/bin/dotmoshez bash-install --no-dry-run --dotfiles ~/src/dotfiles/ --no-dry-run
