#! /bin/bash

packer build -var-file=private_vars.json config.json

# clean up
rm -vfr ./output-vagrant
