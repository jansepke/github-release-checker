#!/usr/bin/env ash
set -eu

main() {
  repository="$1"
  currentVersion="$2"

  remoteVersion=$(curl --silent "https://api.github.com/repos/$repository/releases/latest" | jq -r .tag_name)

  if [ "$currentVersion" != "$remoteVersion" ]; then
    echo "$repository version $remoteVersion is newer then $currentVersion"
    exit 1
  else
    echo "$repository is up to date"
    exit 0
  fi
}

if [ $# -lt 2 ]; then
  echo "check latest github release against a given version"
  echo
  echo "Syntax: docker run jansepke/github-release-checker user/repository version"
  echo "example:"
  echo "  hashicorp/terraform v0.12.0"
  exit 1
fi

main "$@"
