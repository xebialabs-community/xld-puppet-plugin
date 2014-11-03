# Preface #

This document describes the functionality provided by the XLD Puppet plugin.

See the **XL Deploy Reference Manual** for background information on XL Deploy and deployment concepts.

# Overview #

The XLD Puppet plugin is a XL Deploy plugin that adds capability for rolling out puppet manifests and modules on an overthere.Host.

# Requirements #

* **Requirements**
	* **XL Deploy** 4.5.0
	* **Puppet** 3.4.3

# Installation #

Place the plugin JAR file into your `SERVER_HOME/plugins` directory.  

# Usage #

1. Go to `Repository - Infrastructure`, create a new `overthere.Host`.
2. Create an environment under `Repository - Environments`
3. Create an application with `puppet.Manifest` as deployable.
4. Start deploying
