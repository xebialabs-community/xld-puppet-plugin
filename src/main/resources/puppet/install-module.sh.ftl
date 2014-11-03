#!/bin/bash

puppet module install ${deployed.moduleName}

if [ $? -ne 0 ]; then
  echo "Failed to execute puppet module install."
  exit 1
fi