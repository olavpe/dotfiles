# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

#compinit -d ~/.cache/zsh/zcompdump-$ZSH_VERSION

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="nerdfont-complete"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs root_indicator background_jobs)
# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="\ufb0c"
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="\ufb0c"

POWERLEVEL9K_DROPBOX_ICON=$'\ue707'
POWERLEVEL9K_ANDROID_ICON=$'\ue70e'
POWERLEVEL9K_APPLE_ICON=$'\uf534'
POWERLEVEL9K_BACKGROUND_JOBS_ICON=$'\uf013'
POWERLEVEL9K_BATTERY_ICON=$'\uf578'
POWERLEVEL9K_DATE_ICON=$'\uf073'
POWERLEVEL9K_DISK_ICON=$'\uf7c9'
POWERLEVEL9K_ETC_ICON=$'\uf013'
POWERLEVEL9K_EXECUTION_TIME_ICON=$'\uf253'
#POWERLEVEL9K_FAIL_ICON=$'\uf071'
POWERLEVEL9K_FAIL_ICON=$'\uf00d'
POWERLEVEL9K_FOLDER_ICON=$'\uf07c'
POWERLEVEL9K_HOME_ICON=$'\uf015'
POWERLEVEL9K_HOME_SUB_ICON=$'\uf414'
POWERLEVEL9K_LINUX_ALPINE_ICON=$'\uf300'
POWERLEVEL9K_LINUX_AOSC_ICON=$'\uf301'
POWERLEVEL9K_LINUX_ARCH_ICON=$'\uf303'
POWERLEVEL9K_LINUX_ARCH_ICON=$'\uf303'
POWERLEVEL9K_LINUX_CENTOS_ICON=$'\uf304'
POWERLEVEL9K_LINUX_COREOS_ICON=$'\uf305'
POWERLEVEL9K_LINUX_ICON=$'\ue712'
POWERLEVEL9K_LINUX_MINT_ICON=$'\uf30e'
POWERLEVEL9K_LINUX_NIXOS_ICON=$'\uf313'
POWERLEVEL9K_LOAD_ICON=$'\uf080'
POWERLEVEL9K_LOCK_ICON=$'\uf023'
POWERLEVEL9K_NETWORK_ICON=$'\uf1eb'
POWERLEVEL9K_OK_ICON=$'\uf00c'
POWERLEVEL9K_RAM_ICON=$'\uf0e4'
POWERLEVEL9K_RUBY_ICON=$'\ue739'
POWERLEVEL9K_SERVER_ICON=$'\uf98c'
POWERLEVEL9K_SUDO_ICON=$'\uf13e'
POWERLEVEL9K_SWAP_ICON=$'\uf9e0'
POWERLEVEL9K_TEST_ICON=$'\ufb67'
POWERLEVEL9K_TIME_ICON=$'\ue385'
POWERLEVEL9K_TODO_ICON=$'\uf634'
POWERLEVEL9K_VCS_BRANCH_ICON=$'\ue0a0'
POWERLEVEL9K_VCS_GITHUB_ICON=$'\uf09b'
POWERLEVEL9K_VCS_GIT_ICON=$'\uf7a1'
POWERLEVEL9K_VCS_HG_ICON=$'\uF0C3'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=$'\ufc2f'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=$'\ufc32'
POWERLEVEL9K_VCS_UNTRACKED_ICON=$'\uF059'         
POWERLEVEL9K_VCS_UNSTAGED_ICON=$'\uF06A'   
POWERLEVEL9K_VCS_STAGED_ICON=$'\uF055'     
POWERLEVEL9K_VCS_STASH_ICON=$'\uF01C ' 
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=$'\uF01A '
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON=$'\uF01B '  

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
 DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

export FZF_BASE=/usr/share/fzf

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# Plugins


#Alias

alias ll='exa -l'
alias la='exa -a -l'
alias e='exa -CF'
alias sourcez='source ~/.zshrc'
alias puu='sudo pacman -Syu'
alias pac='sudo pacman -Syu'

# Shortcut to often edited config files
alias i3config='vim ~/.config/i3/config' 
alias zshconfig='vim ~/.zshrc' 
alias urxvtconfig='vim ~/.Xresources' 
alias comptonconfig='vim ~/.config/compton/compton.conf' 
alias polybarconfig='vim ~/.config/polybar/config' 
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias emacsconfig="vim ~/.emacs.d/init.el"

# Path to your oh-my-zsh installation.
export ZSH="/home/olav/.oh-my-zsh"

plugins=(
         colored-man-pages
         sudo
         colorize
         copyfile
         docker
         extract
         fzf
         git
         git-extras
         #git-flow
         history
         mix
         repo
         vscode
	 vi-mode
         web-search
         z)

# For fzf to work
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

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
export ERL_AFLAGS="-kerel shell_history enabled"
export ZSH="/home/olav/.oh-my-zsh"
export FZF_BASE
export PATH=$PATH:/home/olav/.cargo/bin
export PATH="/home/olav/.local/bin:$PATH"
export PATH=$PATH:/opt/easyeda

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases

#source ~/powerlevel10k/powerlevel10k.zsh-theme
#source ~/z.sh
source $ZSH/oh-my-zsh.sh
(cat ~/.cache/wal/sequences &) 
source ~/.cache/wal/colors-tty.sh


if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx
fi
