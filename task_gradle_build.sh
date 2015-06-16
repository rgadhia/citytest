#!/bin/sh

echo "Build Starting!"


export TERM=${TERM:-dumb}
gradle build

echo "Build Complete!"
