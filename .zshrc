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

# Unset LESS
# unset LESS;

#FASD
eval "$(fasd --init auto)"

# Resources
# https://medium.com/pareture/simplest-zsh-prompt-configs-for-git-branch-name-3d01602a6f33
#

# READ ONLY HELIO PROD DB ACCESS
function gsts()
{
  RDSHOST="awsprod-helios-pgsql-overlord.cuakayfqf72t.us-east-1.rds.amazonaws.com"
  PORT="5432"
  REGION="us-east-1"
  USERNAME="helios_readonly"
  TOKEN="$(aws rds generate-db-auth-token --hostname $RDSHOST --port $PORT --region $REGION --username $USERNAME)"
  echo $TOKEN
}

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
