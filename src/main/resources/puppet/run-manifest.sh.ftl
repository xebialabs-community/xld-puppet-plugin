<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->
#!/bin/bash

echo "${deployed.container.puppetHome}/puppet apply ${deployed.file.path}"
${deployed.container.puppetHome}/puppet apply ${deployed.file.path}

if [ $? -ne 0 ]; then
  echo "Failed to execute puppet apply manifest."
  exit 1
fi
