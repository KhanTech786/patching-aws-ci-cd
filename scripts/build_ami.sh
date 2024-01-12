#!/bin/bash

# packer run for new ami
packer init .
packer build kts.pkr.hcl

