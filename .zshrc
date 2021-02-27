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
source .aliases
alias zshconfig="vim ~/.zshrc"
alias sz='source ~/.zshrc'
alias dotfiles='cd ~/.dotfiles'

# Unset LESS
unset LESS;
#
#MENTAT
export MENTAT__CONFIG_PATH='/Users/joseph.porter/repos/mentat/mentat.cfg'
export PATH=$PATH:~/bin

# Resources
# https://medium.com/pareture/simplest-zsh-prompt-configs-for-git-branch-name-3d01602a6f33