CHANGE_TYPE="major"
OLD_VERSION="1.3.1"

if [[ ! "$OLD_VERSION" =~ ^([0-9]+)\.([0-9]+)\.([0-9]+)$ ]]; then
echo "Old version must be in format X.Y.Z"
exit 1
fi

# Extract major, minor, patch
MAJOR="${BASH_REMATCH[1]}"
MINOR="${BASH_REMATCH[2]}"
PATCH="${BASH_REMATCH[3]}"

# Bump version according to semantic versioning
case "$CHANGE_TYPE" in
major)
MAJOR=$((MAJOR + 1))
MINOR=0
PATCH=0
;;
minor)
MINOR=$((MINOR + 1))
PATCH=0
;;
patch)
PATCH=$((PATCH + 1))
;;
*)
echo "Change type must be one of: major, minor, patch"
exit 1
;;
esac

NEW_VERSION="$MAJOR.$MINOR.$PATCH"

# Save the version number to GitHub environment
echo "NEW_VERSION=${NEW_VERSION}" >> $GITHUB_ENV
# Display new version number
echo "NEW VERSION: ${NEW_VERSION}"