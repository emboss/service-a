echo "version = $1"

# Get version number from version tag
JAR_VERSION=$(echo $1 | cut -d'v' -f2)
echo "jar version = $JAR_VERSION"

# Set new library version in application.properties
# so it gets included in the jar file
./update_version.sh $JAR_VERSION

rm -rf release
mkdir release
./gradlew clean build -DreleaseVersion=$JAR_VERSION
cp build/libs/service-a-$JAR_VERSION.jar release/service-a-$JAR_VERSION.jar