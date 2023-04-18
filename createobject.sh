#!/bin/bash -x
SOURCE=$(mktemp -d)
DEST=/Users/jeff/Downloads/demo
#COMPONENT_NAME=$1
#PACKAGE_NAME=$2

 JAR=$(echo "{'foo'': '${SOURCE}'}" | jq .

)

  echo $JAR



echo $MULTI_LINE_VAR
#tanzu acc generate "test-accelerator" --server-url https://accelerator.view.amer.end2end.link --options-file << EOF {

#unzip test-accelerator.zip -d $SOURCE
#cd "${SOURCE}/test-accelerator";
#find . -type d  -print -exec mkdir -p "/Users/jeff/Downloads/demo/{}" \;
#find . -type f -exec cp {}  "/Users/jeff/Downloads/demo/{}" \;
#find . -type d -empty -delete