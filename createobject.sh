#!/bin/bash -x
SOURCE=$(mktemp -d)
DEST=/Users/jeff/Downloads/demo
COMPONENT_TYPE=$1
PACKAGE_NAME=$2
CLASS_NAME=$3

JSON_STRING=$( jq -n -r \
                  --arg cn "$CLASS_NAME" \
                  --arg ct "$COMPONENT_TYPE" \
                  --arg pn "$PACKAGE_NAME" \
                  '{
                    className : $cn, 
                    componentType : $ct,
                    includeTest : "yes",
                    pkgName : $pn,
                    projectName : "test-accelerator"}'
                  )

echo $JSON_STRING > test.txt


tanzu acc generate test-accelerator --server-url https://accelerator.view.amer.end2end.link --options-file=test.txt

unzip test-accelerator.zip -d $SOURCE
cd "${SOURCE}/test-accelerator";
find . -type d  -print -exec mkdir -p "/Users/jeff/Downloads/demo/{}" \;
find . -type f -exec cp {}  "/Users/jeff/Downloads/demo/{}" \;
find . -type d -empty -delete