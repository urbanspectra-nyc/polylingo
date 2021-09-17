#!/bin/bash

:' Max consistency when using asdf in bash across software dev languages: funcIndex + funcTests + funcCode

We will need to keep sharp eyes on several moving targets:
- asdf versions
- asdf available plugins
- asdf 
- brew supported versions

- bash || zsh
- 

Implementation Example... [ setUrl | curlScript | sourceScript | testScript | logScriptRun | rmScript ]

ASDF_BASH_FUNCTIONS_SCRIPT_URL="https://raw.githubusercontent.com/urbanspectra-nyc/polylingo/rails_version_update/scripts/asdf-bash-functions.sh"
ASDF_BASH_FUNCTIONS_SCRIPT_NAME=$( basename "${ASDF_BASH_FUNCTIONS_SCRIPT_URL}" )
function sourceWebScript() { curl -o /dev/null --silent -Iw '%{http_code}' $1 | source } 
sourceWebScript "${ASDF_BASH_FUNCTIONS_SCRIPT_URL}" >> load_test_bash_functions.log
rm $ASDF_BASH_FUNCTIONS_SCRIPT_NAME
# Copy FIVE lines above and add to local script to load and test these bash functions.

FILE STRUCTURE
- FUNCTION INDEX: [ preserveStates, gettersBatch, setupConfigs, loggers, setters, ops, teardowns ]
- FUNCTION TESTING: 
- FUNCTION CODE
'

# FUNCTION INDEX

# getters
function xStamps() { } # time + date + unixtime + microtime
function distroFlavorVersion() { }
function pkgMgrs() { }
function canBeSudoer() { } # Test: $ sudo bash
function canBeSudoerNoPass() { } # Test: $ sudo bash
function canWrite2Repo() { } # Test: $ 
function canPullRequest2Repo() { } # Test: $ 

# loggers
function bashLogger() { } # 
function preserveConfigs() { } # Like env or brew bundle or pip freeze.

# setters
function asdfPluginsListAllPluginsUpdateRepo() { }
function asdfPluginsListAllDevLangVersionsUpdateRepo() { }
function localDevLangDir(cd ; mkdir -p "~/repos/_${1}/" ; cd $_; }
function localDevLangProjectDir() { } # 

# ops

function asdfInstallPluginListVersions() { asdf plugin-add $1 $2 ; asdf list-all $1 } # Tests:  [ dev_lang_nonexistent, dev_lang_exists, dev_lang_new_undetected ]
function asdfLocalRubyRailsSetup
function asdfLocalElixirPhoenixSetup


function gitEtc() { }
function installedMeta() { } # installedUsing; installedAtVersion; configGet; configSet; testedAtVersion # Test using git 



bash # Subshell supports errors sans crashing terminal window.  Text: $ exit 0

# loggers
function bashLogger() { } # 
function xStamps() { } # time + date + unixtime + microtime

# setters
function asdfPluginsListAllPluginsUpdateRepo() { }
function asdfPluginsListAllDevLangVersionsUpdateRepo() { }

# getters
function distroFlavorVersion() { }
function pkgMgrs() { }
function canBeSudoer() { } # Test: $ sudo bash
function canBeSudoerNoPass() { } # Test: $ sudo bash
function canWrite2Repo() { } # Test: $ 
function canPullRequest2Repo() { } # Test: $ 

function asdfInstallPluginListVersions() { asdf plugin-add $1 $2 ; asdf list-all $1 } # Tests:  [ dev_lang_nonexistent, dev_lang_exists, dev_lang_new_undetected ]
function asdfLocalRubyRailsSetup
function asdfLocalElixirPhoenixSetup

function localDevLangDir(cd ; mkdir -p "~/repos/_${1}/" ; cd $_; }
function localDevLangProjectDir() { } # 

function gitEtc() { }
function installedMeta() { } # installedUsing; installedAtVersion; configGet; configSet; testedAtVersion # Test using git 

# FUNCTION TESTING

function funcTestAllFunctions()
function funcTestOneFunct()

# FUNCTION CODE

function 
