fpath=(~/tools/zsh-completion/ $fpath)

# Path to your oh-my-zsh installation.
 export ZSH=/home/migross/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
 # ZSH_THEME="bureau"
 ZSH_THEME="blinks"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

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
plugins=(git python pyenv pep8 pylint tmux tmuxinator pip pass sudo zsh-autocomplete colored-man-pages zsh-autosuggestions)

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
alias ea='vim /home/migross/tools/dotfiles/.myaliases' 	
alias ev='vim /home/migross/tools/dotfiles/.vimrc' 	
alias et='vim /home/migross/tools/dotfiles/.tmux.conf'
alias ez='vim /home/migross/tools/dotfiles/.zshrc'
alias sv='source ~/.vimrc'
alias st='source ~/.tmux.conf'
alias sz='source ~/.zshrc'
alias ll='ls -all --color'
alias ls='ls -all --color'
alias mux='tmuxinator'
alias tlee='tree -C . | less -R'
alias droopy='python ~/tools/droopy/droopy'
alias burp='java -jar ~/tools/burp/burpsuite_pro_v1.7.27.jar'
alias searchsploit='/home/migross/tools/exploit-database/searchsploit'
alias mako='/home/migross/tools/scripts/mako.sh'
alias webgoat='java -jar /home/migross/tools/training/webgoat/webgoat-container-7.1-exec.jar -httpPort 9090'
alias dirbuster='java -jar /home/migross/tools/dirbuster/DirBuster-0.12.jar'
alias testssl='/home/migross/tools/testssl.sh'
alias gl='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
alias r="ranger"
alias vims="vim --servername vim"
alias thc-ssl-dos="/home/migross/tools/thc-ssl-dos/thc-ssl-dos-1.4/src/thc-ssl-dos"
alias rw="python3 /home/migross/tools/report-writer/rw.py"
alias c='clear'
alias r='ranger'
alias sdc='/home/migross/tools/sdc/sdc.sh'
alias ip='ip --color'
source /home/migross/tools/sydotfiles/.sy_zsh

# set default editor
export EDITOR="vim"

# set vi mode settings
# bindkey -v
# bindkey -M viins 'jj' vi-cmd-mode

# Map Capslock to Control-Key
setxkbmap -layout de -option ctrl:nocaps

# Map autosuggestion accept to ctrl+<space>
bindkey '^ ' autosuggest-accept

#start fasd
eval "$(fasd --init auto)"


