# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/peterphan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


#***** Below is all stuff I've added *****

#*** rbenv ***
eval "$(rbenv init -)"

#*** powerline ***
# . /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

#*** powerlevel9k ***
source  ~/powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs)

#*** syntax highlighting. must come before sourcing zsh-history-substring-search ***
source /usr/local/opt/zsh-syntax-highlighting/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#*** can press up or down arrow keys after typing partial string to search through history of commands
source /usr/local/opt/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

#***** Set default editor *****
export EDITOR=/usr/local/bin/vim
export VISUAL=/usr/local/bin/vim

#***** Sourcing tmuxinator completion file for zsh *****
source ~/.bin/tmuxinator.zsh

#***** Set up alias for tmux so it opens up vim with 256 colors *****
alias tmux="TERM=screen-256color-bce tmux"

#***** Put MacVim mvim script in path. Able to open MacVim with mvim in terminal *****
# export PATH=/Applications/MacVim.app/Contents/bin:$PATH

#***** Setting alias "config" to "git" *****
alias config='/usr/bin/git --git-dir=/Users/peterphan/.cfg/ --work-tree=/Users/peterphan'
