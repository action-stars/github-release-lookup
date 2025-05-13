# GitHub Release Lookup GitHub Action

## Description

<!-- AUTO-DOC-DESCRIPTION:START - Do not remove or modify this section -->

Looks up a GitHub repository release.

<!-- AUTO-DOC-DESCRIPTION:END -->

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|    INPUT     |  TYPE  | REQUIRED |  DEFAULT   |                           DESCRIPTION                           |
|--------------|--------|----------|------------|-----------------------------------------------------------------|
| github_token | string |   true   |            |             GitHub token to use for authentication.             |
|    owner     | string |   true   |            |                    GitHub repository owner.                     |
|  repository  | string |   true   |            |                       GitHub repository.                        |
|  tag_prefix  | string |  false   |   `"v"`    |                       Version tag prefix.                       |
|   version    | string |  false   | `"latest"` | Version of the GitHub release to lookup; `latest` is supported. |

<!-- AUTO-DOC-INPUT:END -->

## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->

| OUTPUT  |  TYPE  |    DESCRIPTION     |
|---------|--------|--------------------|
| version | string | Validated version. |

<!-- AUTO-DOC-OUTPUT:END -->
