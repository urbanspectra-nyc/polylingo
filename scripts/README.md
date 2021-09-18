## Local Test-Driven Setups For Any Dev Language Using asdf

#### Table of Contents
- [Statements of Purpose](#statements-of-purpose)
- [Operating System Prerequisites](#operating-system-prerequisites)
- [Quick Starts](#quick-starts)
- []()

#### Tools At Play

#### Tracking Versions
#### Moving Targets To Scout
#### Scripts Directory Structure
#### Function Index
---

#### Statements of Purpose
- Support 2+ dev languages for local software project(s).
- Support 2+ versions of a given language for local project(s).
- Maximize consistency across operating systems, + dev languages.
- Create local project directories that are self-contained.
- Tracking legacy, current and emerging dependencies.

#### Operating System Prerequisites
- Linux
- OSX
- Windows Running Linux VM

#### Quick Starts

##### Set Up Local Dev Environment on OSX and Linux
- Capture baseline host state. Select a supported language and framework.  Get version before.
- Curl and execute asdf-centric bash function library.  Install asdf and load dev language plugin.  Take note of ~/.bash_profile.
- Curl and execute the Local Dev Setup Script for a given software development language.  New versions at play scoped to single project directory.
- Post Tests: Same devlang@diffversion, what do sudoers see, remove+restore

##### Deploy To Heroku
  - Create Heroku Account
  - Install Heroku CLI
  - Prepare App Code For Heroku Deploys
  - Deploy To Heroku

##### Deploy To Public Cloud Vendors
  - Create AWS/GCP Account
  - 

##### Automate Secure Deployments
- hashicorp cloud terraform
- github actions
- sops

##### Explore Containerization
- dockerfiles
- gitpods
- helm charts
- k8s

#### Tracking Versions

##### Operating systems + package managers + tools
##### Managing asdf installation + upgrades
##### Dev Languages
##### Dev Language Tools + Components

#### Tools At Play
- We share our dev setups and app code via [github](http://github.com).
- We use [asdf](https://asdf-vm.com/) to support setting up a given software development language at a given version.
- We deploy our code to [heroku](http://heroku.com) using the [heroku cli](https://devcenter.heroku.com/articles/heroku-cli-commands).
- Our first language-frameworks are ruby-rails + elixir-phoenix.
- Complete dev language support includes local setups, tracks deps, dockerfile => gitpod, deploy to heroku, deploy to aws, deploy to gcp... automate.
- We will use [github actions](https://github.com/features/), [sops](https://medium.com/cloudandthings/terraform-git-commit-m-all-the-secrets-5dfea9b111de) and [terraform](https://www.terraform.io/docs/cloud/workspaces/index.html) where appropriate.
- App testing will take the forms of rspec and minitest.

#### Moving Targets To Scout
- uname => flavorDistroVersion
- new osx or linux versions
- bashVersion || zshVersion
- ~/.bash_profile
- .project_bash_profile
- asdf versions
- asdf available plugins
- asdf available language versions
- new versions of package managers
- brew supported versions


#### Scripts Directory Structure
- /scripts/ => We intend to migrate this directory to its own [public github repo](https://github.com/urbanspectra-nyc/asdf-tools-across-languages.git).
  - [functions to implement asdf agnostically regarding dev langs ](asdf-bash-functions.sh)
  - [/ruby-rails/](ruby-rails/)
  - [/elixir-phoenix/](elixir-phoenix/)
  - [/node-??/]()
  - [/py3-flask/]()

- Implementation Example... [ setUrl | curlScript | sourceScript | testScript | logScriptRun | rmScript ]

```
ASDF_BASH_FUNCTIONS_SCRIPT_URL="https://raw.githubusercontent.com/urbanspectra-nyc/polylingo/rails_version_update/scripts/asdf-bash-functions.sh"
ASDF_BASH_FUNCTIONS_SCRIPT_NAME=$( basename "${ASDF_BASH_FUNCTIONS_SCRIPT_URL}" )
function sourceWebScript() { curl -o /dev/null --silent -Iw '%{http_code}' $1 | source } 
sourceWebScript "${ASDF_BASH_FUNCTIONS_SCRIPT_URL}" >> load_test_bash_functions.log
rm $ASDF_BASH_FUNCTIONS_SCRIPT_NAME
# Copy FIVE lines above and add to local script to load and test these bash functions.
```

#### FUNCTION INDEX
- Function names and test names must stay synced.  Function tags can span 2+ categories.
- This README.md file helps us organize both tests and code in [asdf bash functions](asdf-bash-functions.sh).
- Each asdf bash function is supported by one or more tests expressed as yaml files.

- FUNCTION INDEX: [ preserveStates, gettersBatch, setupConfigs, loggers, setters, ops, teardowns ]

FILE STRUCTURE
- FUNCTION CODE:
- FUNCTION TESTING: 

##### getters
- function xStamps() { } # time + date + utime + mtime
- function distroFlavorVersion() { }
- function pkgMgrs() { }
- function canBeSudoer() { } # Test: $ sudo bash
- function canBeSudoerNoPass() { } # Test: $ sudo bash
- function canWrite2Repo() { } # Test: $ 
- function canPullRequest2Repo() { } # Test: $ 

##### loggers
- function bashLogger() { } # 
- function preserveConfigs() { } # Like env or brew bundle or pip freeze.

##### setters
- function asdfPluginsListAllPluginsUpdateRepo() { }
- function asdfPluginsListAllDevLangVersionsUpdateRepo() { }
- function localDevLangDir(cd ; mkdir -p "~/repos/_${1}/" ; cd $_; }
- function localDevLangProjectDir() { } # 

##### ops
- function asdfInstallPluginListVersions() { asdf plugin-add $1 $2 ; asdf list-all $1 } # Tests:  [ dev_lang_nonexistent, dev_lang_exists, dev_lang_new_undetected ]
- function asdfLocalRubyRailsSetup
- function asdfLocalElixirPhoenixSetup

- function composeIndentedBlock() {}
- function insertIndentedBlockIntoFileAtLine() {}
- function gitEtc() { }
- function installedMeta() { } # installedUsing; installedAtVersion; configGet; configSet; testedAtVersion # Test using git 
