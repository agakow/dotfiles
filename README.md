# My Dotfiles

## Install
```bash
git clone https://github.com/agakow/dotfiles.git ~/Projects/dotfiles
cd ~/Projects/dotfiles
chmod +x setup
./setup
```

## Components

* `bin/:` Anything in `bin/` will get added to your `$PATH` and be made available everywhere.
* `topic/*.zsh:` Any files ending in `.zsh` get loaded into your environment.
* `topic/path.zsh:` Any file named `path.zsh` is loaded first and is expected to setup `$PATH` or similar.
* `topic/completion.zsh:` Any file named `completion.zsh` is loaded last and is expected to setup autocomplete.
* `topic/*.symlink:` Any files ending in `*.symlink` get symlinked into your `$HOME`.
