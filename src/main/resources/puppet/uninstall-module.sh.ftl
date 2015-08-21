<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->
#!/bin/bash

echo "${deployed.container.puppetHome}/puppet module uninstall ${previousDeployed.moduleName}  <#if previousDeployed.force> --force  </#if>"
${deployed.container.puppetHome}/puppet module uninstall ${previousDeployed.moduleName}  <#if previousDeployed.force> --force  </#if>


if [ $? -ne 0 ]; then
  echo "Failed to execute puppet module uninstall."
  exit 1
fi
