# My spin on dotfiles (forked from holman)

https://cheleb.net/2019/10/17/macos-ignore-updates/

## Commands to run and experiment with?

0. `cd ~/.dotfiles`
1. `script/bootstrap`
2. `script/install`
3. `dot`
4. `echo $PATH` (`echo $PATH | tr ":" "\n"` for better experience) lists all path variables.
5. `where brew` to get the location of executable (`brew` for instance)
6. `printenv`, `typeset`

## TODO / Issues to fix

- fix path duplications and order
- customization for macos defaults
- nvim/lvim/vim
- git setup
- clean up .dotfiles/bin folder
- clean up .dotfiles/functions foldersrsr
- understand zsh setup
- vscode setup
- find and use font
- install java, node, go, ruby, etc
- what is tmux?
- what is yarn?
- what is docker?
-

## Used repos

- [holman](https://github.com/holman/dotfiles) for main basis
- [Cluckerino](https://github.com/Cluckerino/dotfiles) to understand initial script base + iterm2 profile
- [marcusoftnet](https://github.com/marcusoftnet/dotfiles) for vscode setup
- [PixelJonas](https://github.com/PixelJonas/dotfiles) for brew setup
- [elft3r](https://github.com/elft3r/dotfiles) for vscode setup
- [mandreyel](https://github.com/mandreyel/dotfiles) for lvim(?)
- [andrew8088](https://github.com/andrew8088/dotfiles)
- [program247365](https://github.com/program247365/dotfiles/tree/master)
