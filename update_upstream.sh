#!/bin/bash
git submodule update
./gradlew clean cleanCache applyPatches
echo "Paper has been updated. Please validate the changes and rebuild using ./gradlew reobfJar"