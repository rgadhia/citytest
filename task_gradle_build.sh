#!/bin/bash

echo "Build Starting!"

if [[ ! -f app-version/number ]]; then
  echo "save_deployment_pipeline.sh requires release-version/number to contain the candidate version number"

  ls -al 
  find .
  exit 1
fi
release_version=$(cat app-version/number)


echo $@
echo $release_version

deploy_version=${release_version//./-}


echo  "---
applications:
- name: citytest-${deploy_version}
  memory: 512M 
  instances: 1
  host: citytest-${deploy_version}
  path: cities-0.0.1.jar
  env:
   JAVA_OPTS: -Djava.security.egd=file:///dev/urandom 
" > manifest.yml

cat manifest.yml

export TERM=${TERM:-dumb}
gradle build

rm build/libs/cities-0.0.1-SNAPSHOT.jar.original
#mv build/libs/cities-0.0.1-SNAPSHOT.jar build/libs/cities-${release_version}-SNAPSHOT.jar 

find . 




echo "Build Complete!"


