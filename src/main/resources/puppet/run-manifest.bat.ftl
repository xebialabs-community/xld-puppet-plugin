<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->
@echo off


echo "${deployed.container.puppetHome}\puppet apply ${deployed.file.path}"
${deployed.container.puppetHome}\puppet apply ${deployed.file.path}

set PUPPET_EXIT_CODE=%ERRORLEVEL%

if not [%PUPPET_EXIT_CODE%]==[0] (
  echo "Failed to execute puppet apply manifest."
  exit %PUPPET_EXIT_CODE%
)

