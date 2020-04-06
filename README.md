# dotfiles
Back-up of configuration files.

## todo
* implement script for using `ag` with `fzf`
* finish implementing scripts in `.zfunc`
* update `.vimrc` to address `TODOs`

## set-up steps
* install `stow`
* clone this repository into your local machine
* run `stow -t ~ <directory-name>` to symlink the configuration files in `<directory-name>` into your home directory
* to pull down the  `git submodules`, run
  ```
  git submodule update --init
  ```
* for the `.gitalias` file, place `.gitalias` in `$HOME` and add the following to your global `.gitconfig`
  ```
  [include]
      path = .gitalias
  ```

## `homebrew` packages
Some `homebrew` packages I've installed:
* ansible
* awscli
* cmatrix
* docker
* docker-compose
* fastlane
* ffmpeg
* figlet
* fzf
* gnu-sed
* gnu-time
* gotop
* htop
* jq
* libuv
* lolcat
* node
* pandoc
* rename
* stow
* the_silver_searcher
* tmux
* tree
* wget
* z

