#!/bin/bash

# Max consistency when using asdf in bash across software dev languages: funcIndex + funcTests + funcCode

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
