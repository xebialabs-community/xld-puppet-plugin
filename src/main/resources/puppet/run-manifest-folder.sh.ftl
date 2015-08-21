<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->
#!/bin/bash

FACTER_XLD_ENVIRONMENT_ID=${environmentId}
FACTER_XLD_VERSION_ID=${versionId}
FACTER_XLD_CONTAINER_ID=${deployed.container.id}

export FACTER_XLD_ENVIRONMENT_ID
export FACTER_XLD_VERSION_ID
export FACTER_XLD_CONTAINER_ID

echo "----- facter ------"
${deployed.container.puppetHome}/facter
echo "/----- facter ------"

echo "${deployed.container.puppetHome}/puppet apply --detailed-exitcodes <#if deployed.module_path?has_content>--modulepath ${deployed.file.path}/${deployed.module_path}:/etc/puppet/modules</#if> <#if deployed.hiera_config?has_content>--hiera_config ${deployed.hiera_config}</#if> <#if deployed.verbose>--verbose</#if> <#if deployed.debug>--debug</#if> <#if deployed.trace>--trace</#if> ${deployed.file.path}/${deployed.manifestPath}/${deployed.manifestFile}"

${deployed.container.puppetHome}/puppet apply --detailed-exitcodes <#if deployed.module_path?has_content>--modulepath ${deployed.file.path}/${deployed.module_path}:/etc/puppet/modules</#if> <#if deployed.hiera_config?has_content>--hiera_config ${deployed.hiera_config}</#if> <#if deployed.verbose>--verbose</#if> <#if deployed.debug>--debug</#if> <#if deployed.trace>--trace</#if> ${deployed.file.path}/${deployed.manifestPath}/${deployed.manifestFile}

PUPPET_EXIT_CODE=$?

echo "Exit Code $PUPPET_EXIT_CODE"

if [ $PUPPET_EXIT_CODE -eq 1 ]; then
    echo "Failed to execute puppet apply manifest.(1)"
    exit 1
fi

if [ $PUPPET_EXIT_CODE -eq 4 ]; then
    echo "Failed to execute puppet apply manifest.(4)"
    exit 1
fi

if [ $PUPPET_EXIT_CODE -eq 6 ]; then
    echo "Failed to execute puppet apply manifest.(6)"
    exit 1
fi

exit 0
