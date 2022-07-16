# zsh auto-completion from history configuration
export ZSH_AUTOSUGGEST_STRATEGY=(history)
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
export ZSH_AUTOSUGGEST_USE_ASYNC="enabled"

# zsh-nvm configuration to load nvmrc automagically
export NVM_AUTO_USE=true

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