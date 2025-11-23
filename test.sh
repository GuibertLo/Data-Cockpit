VERSION="1.6.1"
TODAY=$(date +"%Y.%m.%d")

# Concatenate all unreleased versions into a release note
#sed -i "0,/^## Unreleased/{s/^## Unreleased/## $VERSION ($TODAY)/}" CHANGELOG.md
sed -i '' "0,/^## Unreleased/{s/^## Unreleased/## $VERSION ($TODAY)/}" CHANGELOG.md

# Extract the newest version's release note
RELEASE_NOTE=$(cat CHANGELOG.md | sed -n '/^## /{n; :a; /^## /q; p; n; ba}')

# Export the extracted changelog as an environment variable
echo "RELEASE_NOTE<<EOF" >> $GITHUB_ENV
echo "$RELEASE_NOTE" >> $GITHUB_ENV
echo "EOF" >> $GITHUB_ENV