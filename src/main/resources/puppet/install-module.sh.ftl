<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->
#!/bin/bash

puppet module install ${deployed.moduleName} <#if deployed.version?has_content > --version ${deployed.version} </#if> <#if deployed.force> --force  </#if> <#if deployed.ignoreDependencies> --ignore-dependencies  </#if>

if [ $? -ne 0 ]; then
  echo "Failed to execute puppet module install."
  exit 1
fi
