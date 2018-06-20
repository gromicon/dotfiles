fpath=(~/tools/zsh-completion/ $fpath)

# Path to your oh-my-zsh installation.
export USER=migross
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
 # ZSH_THEME="bureau"
 ZSH_THEME="bira"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git python pyenv pep8 pylint tmux tmuxinator pip pass sudo zsh-autocomplete colored-man-pages zsh-autosuggestions fasd)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# think ev for "edit" vim ..etc..
# All my Aliases are in a separate file
alias ev="vim $HOME/tools/dotfiles/.vimrc"
alias et="vim $HOME/tools/dotfiles/.tmux.conf"
alias ez="vim $HOME/tools/dotfiles/.zshrc"
alias ei="vim $HOME/.config/i3/config"
alias sv='source ~/.vimrc'
alias st='source ~/.tmux.conf'
alias sz='source ~/.zshrc'
alias ll='ls -all --color | less'
alias ls='ls -all --color'
alias mux='tmuxinator'
alias x='xdg-open '
alias tlee='tree -C . | less -R'
alias droopy='python ~/tools/droopy/droopy'
alias burp='java -jar ~/tools/burp/burpsuite_pro_v1.7.27.jar'
alias searchsploit="$HOME/tools/exploit-database/searchsploit"
alias m="$HOME/tools/scripts/mako.sh"
alias nm="$HOME/tools/scripts/new-mako.sh"
alias mako="$HOME/tools/scripts/mako.sh"
alias webgoat="java -jar $HOME/tools/training/webgoat/webgoat-container-7.1-exec.jar -httpPort 9090"
alias dirbuster="java -jar $HOME/tools/dirbuster/DirBuster-0.12.jar"
alias testssl="sudo $HOME/tools/testssl.sh/testssl.sh"
alias gl='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
alias r='ranger'
alias thc-ssl-dos="$HOME/tools/thc-ssl-dos/thc-ssl-dos-1.4/src/thc-ssl-dos"
alias rw="$HOME/tools/report-writer/rw.sh "
alias c='clear'
alias ip='ip --color'
alias sdc="sudo $HOME/tools/sdc/sdc.sh"
alias nh='python3 /home/$USER/tools/nessus-helper/nessus-helper.py'
alias sudo='sudo env PATH=$PATH'  
alias lyncsmash='python2 /home/$USER/tools/lyncsmash/lyncsmash.py'
alias theHarvester='python /home/$USER/tools/theHarvester/theHarvester.py '
alias recon-ng='/home/$USER/tools/recon-ng/recon-ng '
alias netns='sudo /home/$USER/tools/netns/netns.sh '
alias nikto='/home/migross/tools/nikto/program/nikto.pl '
alias sqlmap='python /home/migross/tools/sqlmap/sqlmap.py '
source $HOME/tools/sydotfiles/.sy_zsh

# set default editor
export EDITOR="vim"

# set vi mode settings
# bindkey -v
# bindkey -M viins 'jj' vi-cmd-mode

# Map Capslock to Control-Key
 setxkbmap -layout de -option ctrl:nocaps
# setxkbmap -rules evdev -model evdev -layout us -variant altgr-intl

# Map autosuggestion accept to ctrl+<space>
bindkey '^ ' autosuggest-accept

#start fasd
eval "$(fasd --init auto)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# append netns to PATH
path+=$HOME/tools/netns
path+=$HOME/tools/mobile
path+=$HOME/.local/share/applications
path+=$HOME/tools/android/android-studio-ide-173.4819257-linux/android-studio/bin/
path+=$HOME/Android/Sdk/platform-tools

#export PATH=$PATH:$HOME/tools/netns
export PATH
