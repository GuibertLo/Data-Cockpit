PR_ID=$2
PR_DESCRIPTION=$(jq -r '.pull_request.body' "$GITHUB_EVENT_PATH" | awk '/^## Description/,/-->/{flag=1; next} /^## / && flag{flag=0} flag')
PR_CHANGELOG=$(jq -r '.pull_request.body' "$GITHUB_EVENT_PATH" | awk '/## Changelog Information/,/-->/ {found = 1; next} found')
DATE=$(date +'%Y.%m.%d')

echo "PR_ID=${PR_ID}"
echo "UPDATE_LEVEL=${update_level}"
echo "PR_DESCRIPTION=${PR_DESCRIPTION}"
echo "PR_CHANGELOG=${PR_CHANGELOG}"
echo "DATE=${DATE}"

# Create a new section in CHANGELOG.md if no previous unreleased section exists
sed -i '0,/^## /{/^## Unreleased/!s/^## /## Unreleased\n\n&/}' CHANGELOG.md

# Insert entry into CHANGELOG.md under Unreleased section
echo -e "\n### PR ${PR_ID}\n${UPDATE_LEVEL}: {PR_DESCRIPTION}\n${PR_CHANGELOG}" | sed -i '/## Unreleased/r /dev/stdin' CHANGELOG.md