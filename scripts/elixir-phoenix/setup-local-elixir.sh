#!/bin/bash

# Setup local elixir dev project using asdf.
# https://thinkingelixir.com/install-elixir-using-asdf/

bash # Subshell errors without crashing terminal window. ?? bash args

ASDF_BASH_FUNCTIONS_SCRIPT_URL="https://raw.githubusercontent.com/urbanspectra-nyc/polylingo/rails_version_update/scripts/asdf-bash-functions.sh"
ASDF_BASH_FUNCTIONS_SCRIPT_NAME=$( basename "${ASDF_BASH_FUNCTIONS_SCRIPT_URL}" ); echo $ASDF_BASH_FUNCTIONS_SCRIPT_NAME;
function sourceWebScript() { curl -o /dev/null --silent -Iw '%{http_code}' $1 | source } 
sourceWebScript "${ASDF_BASH_FUNCTIONS_SCRIPT_URL}" >> load_test_bash_functions.log
rm $ASDF_BASH_FUNCTIONS_SCRIPT_NAME

# brew remove?


Workflows


brew doctor; brew install asdf; asdf -h

asdf plugin list all
asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf list-all erlang
echo 'erlang 24.0.6' >> ~/.tool-versions
time asdf install erlang 24.0.6 # Takes quite a while....

:'Erlang/OTP 24.0.6 (asdf_24.0.6) has been successfully built
Installing Erlang/OTP 24.0.6 (asdf_24.0.6) in /Users/admin/.asdf/installs/erlang/24.0.6...
You can activate this installation running the following command:
. /Users/admin/.asdf/installs/erlang/24.0.6/activate
Later on, you can leave the installation typing:
kerl_deactivate
Cleaning up compilation products for 
Cleaned up compilation products for  under /Users/admin/.asdf/plugins/erlang/kerl-home/builds
ln: failed to create symbolic link ./erl_call: File exists

Erlang 24.0.6 has been installed. Activate globally with:

    asdf global erlang 24.0.6

Activate locally in the current folder with:

    asdf local erlang 24.0.6
'

asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf list-all elixir # Spot release with the correct OTP version.
echo -e "erlang 24.0.6\nelixir master-otp-24" >> ~/.tool-versions
time asdf install elixir # OTP 24

mkdir elixir-local-dev/  ; cd $_
asdf local 




asdf plugin list-all
asdf plugin add 
asdf plugin update-all
asdf list-all [lang]
asdf install [lang] [version]
asdf uninstall [lang] [version]
[lang] -v
mkdir local_test; cd $_
asdf local [lang] [version]
[lang] -v; cd ..; [lang] -v

'
# Tests Before: $ erl -v; elixir -v
# Tests After: $ erl -v; elixir -v
# Expected After: 

