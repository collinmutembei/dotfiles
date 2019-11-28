
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# load nvm and nvm bash completions
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"


export HOMEBREW_GITHUB_API_TOKEN=
export PIP_EXTRA_INDEX_URL=
export PATH="$HOME/.poetry/bin:$PATH"


