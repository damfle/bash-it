cite about-plugin
about-plugin 'gerrit helpers functions'

function gerrit_review {
  git push origin HEAD:refs/publish/master
}

function gerrit_reset {
  git checkout -B master origin/master
}

function gerrit_change {
  gitpush=$(git remote get-url --push origin | sed 's/[a-zA-Z]\+\:\/\///')
  gitdir=$(git rev-parse --git-dir)
  scp -p -P 29418 ${gitpush}:hooks/commit-msg ${gitdir}/hooks/
}
