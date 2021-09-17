#!/bin/bash

# Maximize consistency between osx and linux when using asdf across software development languages.

:' Example...
ASDF_BASH_FUNCTIONS_SCRIPT_URL="https://raw.githubusercontent.com/urbanspectra-nyc/polylingo/rails_version_update/scripts/asdf-bash-functions.sh"
ASDF_BASH_FUNCTIONS_SCRIPT_NAME=$( basename "${ASDF_BASH_FUNCTIONS_SCRIPT_URL}" ); echo $ASDF_BASH_FUNCTIONS_SCRIPT_NAME; rm $_
function sourceWebScript() { curl -o /dev/null --silent -Iw \'%{http_code}\' $1 | source >> load_test_bash_functions.log } 
# Copy THREE lines above and add to local script, followed by: $ rm $ASDF_BASH_FUNCTIONS_SCRIPT_NAME
,

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



