#!/usr/bin/env bash

# Move contents to temp directory.
mkdir ../__tmp__
mv * ../__tmp__

# Duplicate the contents for every user.
mkdir konexio
cp -r ../__tmp__/* konexio/

for dir in "$@"
do
  mkdir ${dir}
  cp -r ../__tmp__/* ${dir}/
done

# Remove the temp directory.
rm -r ../__tmp__

echo "Done."
