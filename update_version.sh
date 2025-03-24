#!/bin/bash

VERSION=$1
# Update version in build.gradle
sed -i "s/version = '.*'/version = '$VERSION'/" build.gradle
# Update version in application.properties
sed -i "s/version=.*/version=$VERSION/" src/main/resources/application.properties