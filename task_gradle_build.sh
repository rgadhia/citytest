#!/bin/sh

echo "Build Starting!"


export TERM=${TERM:-dumb}
gradle build

find .

echo "Build Complete!"
