#!/bin/sh

echo "Build Starting!"

echo $@

export TERM=${TERM:-dumb}
gradle build

rm build/libs/cities-0.0.1-SNAPSHOT.jar.original

find . 


echo "Build Complete!"
