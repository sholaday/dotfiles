# Dotfiles
Back-up of configuration files and bootstrap scripts.

## To-Do
* Implement script for using `ag` with `fzf`
* Finish implementing scripts in `.zfunc`
* Update `.vimrc` to address `TODOs`

## Set-Up Steps
* Install `stow`
* Clone this repository into your local machine
* Run `stow -t ~ <directory-name>` to symlink the configuration files in `<directory-name>` into your home directory
* To pull down the  `git submodules`, run
  ```
  git submodule update --init
  ```
* For the `.gitalias` file, place `.gitalias` in `$HOME` and add the following to your global `.gitconfig`
  ```
  [include]
      path = .gitalias
  ```

