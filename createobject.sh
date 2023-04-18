#!/bin/bash -x
SOURCE=$(mktemp -d)
DEST=/Users/jeff/Downloads/demo
tanzu acc generate "test-accelerator" --server-url https://accelerator.view.amer.end2end.link --options-file test.txt
unzip test-accelerator.zip -d $SOURCE
cd "${SOURCE}/test-accelerator";
find . -type d  -print -exec mkdir -p "/Users/jeff/Downloads/demo/{}" \;
find . -type f -exec cp {}  "/Users/jeff/Downloads/demo/{}" \;
find . -type d -empty -delete