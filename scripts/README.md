## Language Agnostic Local Dev Setups

- We use [asdf](https://asdf-vm.com/) to support any software development language at a given version.
- We share our dev setups and app code via [github](http://github.com).
- We deploy our code to [heroku](http://heroku.com) using the [heroku cli](https://devcenter.heroku.com/articles/heroku-cli-commands).
- This README.md file helps organize our tests with code in [asdf bash functions](asdf-bash-functions.sh).
- Each asdf bash function is supported by one or more tests expressed as yaml files.
- Our first language-frameworks are ruby-rails + elixir-phoenix.
- Support for other dev languages in the near term will be driven by testing.

We will need to keep sharp eyes on several moving targets:
- bashVersion || zshVersion
- ~/.bash_profile
- .project_bash_profile
- asdf versions
- asdf available plugins
- asdf available language versions
- brew supported versions
- 


#### Scripts Directory Structure
- /scripts/ => We intend to migrate this directory to its own [public github repo](https://github.com/urbanspectra-nyc/asdf-tools-across-languages.git).
  - [functions to implement asdf agnostically regarding dev langs ](asdf-bash-functions.sh)
  - [/ruby-rails/](ruby-rails/)
  - [/elixir-phoenix/](elixir-phoenix/)
  - [/node-??/]()
  - [/py3-flask/]()

Implementation Example... [ setUrl | curlScript | sourceScript | testScript | logScriptRun | rmScript ]

ASDF_BASH_FUNCTIONS_SCRIPT_URL="https://raw.githubusercontent.com/urbanspectra-nyc/polylingo/rails_version_update/scripts/asdf-bash-functions.sh"
ASDF_BASH_FUNCTIONS_SCRIPT_NAME=$( basename "${ASDF_BASH_FUNCTIONS_SCRIPT_URL}" )
function sourceWebScript() { curl -o /dev/null --silent -Iw '%{http_code}' $1 | source } 
sourceWebScript "${ASDF_BASH_FUNCTIONS_SCRIPT_URL}" >> load_test_bash_functions.log
rm $ASDF_BASH_FUNCTIONS_SCRIPT_NAME
# Copy FIVE lines above and add to local script to load and test these bash functions.

'

#### FUNCTION INDEX

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
