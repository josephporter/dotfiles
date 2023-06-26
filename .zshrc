# Find and set branch name var if in git repository.
function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo '- (%F{red}'$branch'%f) '
  fi
}

# Enable substitution in the prompt.
setopt prompt_subst

# Config for prompt. PS1 synonym.
prompt='# %F{yellow}%1~%f $(git_branch_name)%F{green}>%f '

#aliases
source $HOME/.dotfiles/.aliases

#functions
source $HOME/.dotfiles/.functions

#FASD
eval "$(fasd --init auto)"

#pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# PyEnv Virtual Env
eval "$(pyenv virtualenv-init -)"

# tfenv
export TFENV_PATH="/usr/local/bin/tfenv"
export PATH="$TFENV_PATH/bin:$PATH"

# Resources
# https://medium.com/pareture/simplest-zsh-prompt-configs-for-git-branch-name-3d01602a6f33
#

