<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->
#!/bin/bash

${deployed.container.puppetHome}/puppet module install ${deployed.file.path} --ignore-dependencies <#if deployed.debug> --debug  </#if>

if [ $? -ne 0 ]; then
  echo "Failed to execute puppet module install."
  exit 1
fi
