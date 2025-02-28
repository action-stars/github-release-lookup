set windows-shell := ["pwsh", "-NoLogo", "-Command"]

default:
  just --list

docs:
  auto-doc --colMaxWords 100 --repository action-stars/github-release-lookup --filename .\action.yml
