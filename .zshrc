# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/houdini/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="lambda-mod-custom"
# ZSH_THEME="spaceship"
# ZSH_THEME="robbyrussell"

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
plugins=(git npm osx pipenv tmux docker-compose)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

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
fpath=(/usr/local/share/zsh-completions /Users/houdini/.oh-my-zsh/plugins/git /Users/houdini/.oh-my-zsh/functions /Users/houdini/.oh-my-zsh/completions /usr/local/share/zsh/site-functions /usr/share/zsh/site-functions /usr/share/zsh/5.3/functions)
export PATH="/usr/local/opt/gettext/bin:$PATH"

# configure personal environment variables
source $HOME/.profile

# load packages installed by brew before system packages
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# configure virtualenvwrapper
export WORKON_HOME=$HOME/Projects/.envs
export PROJECT_HOME=$HOME/Projects/personal
# source /usr/local/bin/virtualenvwrapper.sh

# aliases for common django commands
alias pmr="python manage.py runserver"
alias pmm="python manage.py migrate"
alias pmmm="python manage.py makemigrations"
alias pmt="python manage.py test"
alias pms="python manage.py shell"
alias pmc="python manage.py createsuperuser"

# aliases for common pip commands
alias preq="pip install -r requirements.txt"
alias pfrz="pip freeze > requirements.txt"

# remove all pip packages
toa () {
    pip freeze | grep -v "^-e" | xargs pip uninstall -y
}

# aliases for vagrant
alias v=vagrant

# prepend text into file
ppend () {
     echo -e "$1 \n$(cat $2)" > $2
}

# create directory and cd into it
mkcd () {
    mkdir "$1"
    cd "$1"
}

# leo is the swahili word for today
alias leo="date +'%d.%m.%y'"


# display all terminal colours
marangi () {
  for i in {0..255}; do
      printf "\x1b[38;5;${i}mcolour${i}\x1b[0m\n"
  done
}

# read markdown files on commandline --> https://goo.gl/ptJiyn
mkdown () {
  pandoc $1 | lynx -stdin
}

# configure pyenv. Preferred at the bottom of shell config file
eval "$(pyenv init -)"

# load rbenv
eval "$(rbenv init -)"

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/houdini/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;
