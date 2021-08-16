setopt no_nomatch
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# nvidia cuda
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64"
export CUDA_HOME=/usr/local/cuda

# added by Anaconda3 4.4.0 installer
export PATH="/home/owyn/anaconda3/bin:$PATH"

# Path to your oh-my-zsh installation.
  export ZSH=/home/owyn/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="ys"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
plugins=(
  git
  tmuxinator
  tmux
  sudo
  sublime
  python
  pip
  history
  yum
  zsh-autosuggestions
  zsh-syntax-highlighting
)

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias afind="apt list|grep $*"
alias ainstall="sudo apt install $*"
alias apt="sudo apt $*"
alias pinstall="pip install $*"
alias cdinstall="conda install $*"
alias ll="ls -lF"
alias lla="ls -alF"
# alias llaf="ll -a | grep $*"
llf(){ls -al $1 | grep $2; }
alias pss="ps -AH" # ps -ef
alias psf="ps -AH | grep $*"
alias psff="ps -ef | grep $*"
alias kill="sudo kill $*"
alias acenv="source activate $*"
alias iftop="iftop -B"
######################### youtube start ################################
alias yd="youtube-dl --proxy socks5://localhost:1080 $1"
alias yds="youtube-dl --proxy socks5://localhost:1080 --write-sub $1"
alias ydas="youtube-dl --proxy socks5://localhost:1080dl --write-auto-sub $1"
alias ydl1="youtube-dl --proxy socks5://localhost:1080 --write-auto-sub -f bestvideo+bestaudio -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' $1"
alias ydl2="youtube-dl --proxy socks5://localhost:1080 --write-auto-sub -f bestvideo+bestaudio -o '%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' $1"
alias ydd="youtube-dl --write-auto-sub -f bestvideo+bestaudio $1"
# yd2(){eval youtube-dl --proxy socks5://localhost:1080 \'$1\';}
# yd2(){print youtube-dl --proxy socks5://localhost:1080 \'$1\';}
######################### youtube sep ##################################
# yd(){eval youtube-dl --proxy socks5://localhost:1080 \'$1\';}
# yds(){eval youtube-dl --proxy socks5://localhost:1080 --write-sub \'$1\';}
# ydas(){eval youtube-dl --proxy socks5://localhost:1080dl --write-auto-sub \'$1\';}
# ydl1(){eval youtube-dl --proxy socks5://localhost:1080 --write-auto-sub -f bestvideo+bestaudio -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' \'$1\';}
# ydl2(){eval youtube-dl --proxy socks5://localhost:1080 --write-auto-sub -f bestvideo+bestaudio -o '%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' \'$1\';}
# ydd(){eval youtube-dl --write-auto-sub -f bestvideo+bestaudio \'$1\';}
######################### youtube end ##################################
# convmv(){ mv "$1" $(echo -n "$1" | iconv -f UTF-8 -t ISO-8859-1 | iconv -f gbk) }
samefile(){find $1 -samefile $2;}
alias wwll="watch -n 0.5 ls -al $*"
alias wnvidia="watch -n 0.5 nvidia-smi"
