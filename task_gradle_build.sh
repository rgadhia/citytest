#!/bin/sh

echo "Build Starting!"


export TERM=${TERM:-dumb}
gradle build

find .

cp build/libs/cities-0.0.1-SNAPSHOT.jar .

echo "Build Complete!"
