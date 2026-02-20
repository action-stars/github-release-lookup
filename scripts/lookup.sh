#! /bin/env bash
set -euo pipefail

if [[ "${VERSION:-latest}" == "latest" ]]; then
  tag_name="$(gh api "repos/${OWNER}/${REPOSITORY}/releases/latest" --jq '.tag_name')"
else
  tag_name="$(gh api "repos/${OWNER}/${REPOSITORY}/releases/tags/${TAG_PREFIX}${VERSION}" -jq '.tag_name')"
fi

if [[ -n "${TAG_PREFIX}" ]]; then
  version="${tag_name/#${TAG_PREFIX}/}"
fi

{
  echo "tag_name=${tag_name}"
  echo "version=${version}"
} >>"${GITHUB_OUTPUT}"
