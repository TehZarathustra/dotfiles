alias l='ls -lAhG'
alias getchmod='stat -f "%OLp"'
alias dockerps='docker ps -a --format "table {{.ID}}\t{{.Names}}\t{{.RunningFor}}\t{{.Status}}\t{{.Size}}"'

function gitst {
  if [ $(git rev-parse HEAD) = $(git ls-remote $(git rev-parse --abbrev-ref @{u} | sed 's/\// /g') | cut -f1) ]; then
    echo -e $GREEN"Up to date"
  else
    echo -e $RED"Not up to date"
  fi
}

function gitDefault {
  export GIT_AUTHOR_NAME=tehzarathustra
  export GIT_AUTHOR_EMAIL=tehzarathustra@gmail.com
  export GIT_COMMITTER_NAME=tehzarathustra
  export GIT_COMMITTER_EMAIL=tehzarathustra@gmail.com
  export GITHUB_HOST=github.com
}

function NPMDefault {
  npm config set registry https://registry.npmjs.org/
}

include $DOTFILES/work.sh
