#!/bin/sh

echo "Build Starting!"

if [[ ! -f app-version/number ]]; then
  echo "save_deployment_pipeline.sh requires release-version/number to contain the candidate version number"
  exit 1
fi
release_version=$(cat app-version/number)


echo $@

export TERM=${TERM:-dumb}
gradle build

rm build/libs/cities-0.0.1-SNAPSHOT.jar.original

find . 


echo "Build Complete!"
