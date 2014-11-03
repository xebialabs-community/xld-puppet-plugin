#!/bin/bash

puppet apply ${deployed.file.name}

if [ $? -ne 0 ]; then
  echo "Failed to execute puppet apply manifest."
  exit 1
fi
