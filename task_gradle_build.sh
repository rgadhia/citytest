#!/bin/sh

echo "Build Starting!"


export TERM=${TERM:-dumb}
./gradlew build

echo "Build Complete!"
