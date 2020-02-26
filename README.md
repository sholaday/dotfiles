# dotfiles
Back-up of configuration files.

## notes
### environment set up steps (for when I forget):
* set terminal emulator theme
* installed zsh and set it as the default shell
* installed oh-my-zsh
* installed powerline font
* installed dircolors-solarized
* set theme to agnoster in .zshrc
* created custom oh-my-zsh patch plugin and enabled it
* enabled tmux oh-my-zsh plugin and set configuration and theme
* installed pathogen for vim and installed solarized colorscheme
* installed ag
* cloned fzf to .fzf and enabled oh-my-zsh plugin
* symlinked fzf binary plugin to pathogen
* installed fzf.vim to pathogen
* installed VS Code, relevant extensions, and VS Code CLI
* enabled VS Code oh-my-zsh plugin

### misc. notes:
* pathogen is used by installing it into the `~/.vim/autoload` folder
  and leaving `execute pathogen#infect()` at the top of your `.vimrc`
* oh-my-zsh plugins typically handle all behaviors that you would need,
  they're basically just a collection of aliases for the most part
    * you can just install the necessary binary and then enable the plugin
    * patch plugins need to be called in the $plugins section before regular plugins

### .zshrc edits (try to keep defaults and make edits in custom):
* ZSH_THEME="agnoster"
* plugins=(custom git tmux vscode fzf)

