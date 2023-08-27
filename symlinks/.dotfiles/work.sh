alias npmw="npm config set registry http://registry.npmjs.org"
alias npmy="npm config set registry http://npm.yandex-team.ru"
alias ynpm='npm --registry http://npm.yandex-team.ru'
alias npm-yandex-deps='npm i --registry="http://npm.yandex-team.ru" && npm run deps --registry="http://npm.yandex-team.ru"'
alias p="pnpm"

function arc_mount {
    cd ~/arc/
    arc mount --mount arcadia/ --store store/ --object-store objects/
    arc mount --mount arcadia2/ --store store2/ --object-store objects/
    cd -
}

function arcstc {
    arc status -s $PWD | grep -E '^(.U|U.|AA|DD) ' | cut -d ' ' -f 2
}

function arcprune {
    arc checkout trunk
    arc pull -r
    arc branch --merged | grep -v trunk | xargs -L 1 arc branch -d
}
