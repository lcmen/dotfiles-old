#!/bin/bash

for GEM in $@
do
  echo "Removing $GEM\n"

  # Delete the gem source
  bundle show gem | xargs rm -rf

  # Clear out the compiled gem cache
  rm -rf ./vendor/bundle/cache/$GEM.gem

  # Clear out bundler's spec cache
  rm ./vendor/bundle/specifications/$GEM*gemspec
done
