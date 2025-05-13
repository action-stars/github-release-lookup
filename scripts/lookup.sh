#! /bin/env bash
set -euo pipefail

if [[ "${VERSION:-latest}" == "latest" ]]; then
  version="$(gh api "repos/${OWNER}/${REPOSITORY}/releases/latest" -q .tag_name)"
else
  version="$(gh api "repos/${OWNER}/${REPOSITORY}/releases/tags/${TAG_PREFIX}${VERSION}" -q .tag_name)"
fi

if [[ -n "${TAG_PREFIX}" ]]; then
  version="${version/#${TAG_PREFIX}/}"
fi

echo "version=${version}" >>"${GITHUB_OUTPUT}"
