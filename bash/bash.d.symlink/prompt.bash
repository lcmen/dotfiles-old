# Sexy Bash Prompt, inspired by "Extravagant Zsh Prompt"
# Screenshot: http://cloud.gf3.ca/M5rG
# A big thanks to \amethyst on Freenode

MAGENTA="\033[1;31m"
ORANGE="\033[1;33m"
GREEN="\033[1;32m"
PURPLE="\033[1;35m"
WHITE="\033[1;37m"
BOLD=""
RESET="\033[m"

parse_git_dirty () {
  if [[ $(git status 2> /dev/null | tail -n1 | cut -c 1-17) != "nothing to commit" ]]; then
    echo "✗"
  else
    echo "ツ"
  fi
}
parse_git_branch () {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1 $(parse_git_dirty)/"
}

PS1="\u in \w\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" on \")\[$ORANGE\]\$(parse_git_branch)\[$RESET\]\n\$ "
