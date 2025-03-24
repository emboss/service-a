echo "version = $1"

# Get version number from version tag
JAR_VERSION=$(echo $1 | cut -d'v' -f2)
echo "jar version = $JAR_VERSION"

# Set new library version in build.gradle
# The new build.gradle will be commited by @semantic-release/git
./update_version.sh $JAR_VERSION