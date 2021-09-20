#!/bin/bash

bash

# System level binary version checks?
cd /
SYSTEM_RUBY_VERSION=$( ruby -v || echo 'None')
SYSTEM_NODE_VERSION=$( node -v || echo 'None')
SYSTEM_RUBY_BUNDLER=$( bundler -v || echo 'None')
SYSTEM_RUBY_RAILS=$( rails -v || echo 'None')
cd ~

# Setup local ruby on rails using asdf.
git version; git config -l
mkdir -p ~/repos/_rails/; cd $_

# Homebrew is used to install asdf on osx; error fixed below.
brew doctor ; brewup
brew install asdf
asdf # Error corrected next line: https://github.com/asdf-vm/asdf/issues/428
echo -e "\n. $(brew --prefix asdf)/asdf.sh" >> ~/.bash_profile; reload; asdf
echo 'legacy_version_file = yes' >> ~/.asdfrc

# Project ruby version + rails version target settings
PROJECT_NAME= # Dir per project would be best.
PROJECT_RUBY_VERSION=
PROJECT_NODE_VERSION=
PROJECT_RAILS_VERSION=

# Install Ruby
time asdf plugin add ruby; time asdf install ruby 3.0.0; asdf global ruby 3.0.0
GLOBAL_RUBY_VERSION=$( ruby -v || echo 'None')

# Install Node
asdf plugin add nodejs
time brew install gnupg
time asdf install nodejs 14.16.0; asdf global nodejs 14.16.0
bash -c '`${ASDF_DATA_DIR:=$HOME/`.asdf}/plugins/nodejs/bin/import-release-team-keyring'# ERROR
GLOBAL_NODE_VERSION=$( node -v || echo 'None' )

# Install postgres
time asdf plugin add postgres ; asdf install postgres 13.2 ; asdf global postgres 13.2
$HOME/.asdf/installs/postgres/13.2/bin/pg_ctl -D $HOME/.asdf/installs/postgres/13.2/data -l logfile start
psql --user $POSTGRES_ADMIN --no-psqlrc -t -c 'show server_version;'

:'initdb: warning: enabling "trust" authentication for local connections
You can change this by editing pg_hba.conf or using the option -A, or
--auth-local and --auth-host, the next time you run initdb.

Success. You can now start the database server using:

    /Users/admin/.asdf/installs/postgres/13.2/bin/pg_ctl -D /Users/admin/.asdf/installs/postgres/13.2/data -l logfile start

# Fancy ASDF tool for managing multiple local postgres versions.
# https://gist.github.com/jbranchaud/3cda6be6e1dc69c6f55435a387018dac
# MySQL??
'

exit; bash # equiv of restarting terminal

# Install bundler as local gem.
time gem install bundler rails
rails -v
bundler -v
rails new asdf_rails_demo -d postgresql # Required sudoer access twice.
ERROR: rails  webpacker:install
  /Users/admin/.asdf/installs/ruby/3.0.0/lib/ruby/3.0.0/rubygems/dependency.rb:307:in `to_specs': Could not find 'spring' (= 3.0.0) among 124 total gem(s) (Gem::MissingSpecError)
  Checked in 'GEM_PATH=/Users/admin/.asdf/installs/ruby/3.0.0/lib/ruby/gems/3.0.0:/Users/admin/.gem/ruby/3.0.0' , execute `gem env` for more information
	  from /Users/admin/.asdf/installs/ruby/3.0.0/lib/ruby/3.0.0/rubygems/dependency.rb:319:in `to_spec'
	  from /Users/admin/.asdf/installs/ruby/3.0.0/lib/ruby/3.0.0/rubygems/core_ext/kernel_gem.rb:62:in `gem'
	  from /Users/admin/repos/_rails/asdf_rails_demo/bin/spring:7:in `block in <top (required)>'
	  from <internal:kernel>:90:in `tap'
	  from /Users/admin/repos/_rails/asdf_rails_demo/bin/spring:5:in `<top (required)>'
	  from bin/rails:2:in `load'
	  from bin/rails:2:in `<main>'

cd asdf_rails_demo
bundle install --path vendor/bundle
$ bundle binstubs bundler
ERROR: Your Ruby version is 3.0.0, but your Gemfile specified 2.6.3
$ gem env
bin/rails db:prepare
bin/rails s

ACTUAL=$( curl -s localhost:3000 )
EXPECTED=''

sudo bash

:' References:
- Brew Bash Shell Completion: https://docs.brew.sh/Shell-Completion
- https://stackoverflow.com/questions/30635292/install-newer-version-of-bundler-with-bundler
- Rails6 changelog: https://edgeguides.rubyonrails.org/6_0_release_notes.html
- New features in rails6: https://www.toptal.com/ruby-on-rails/rails-6-features
- ASDF OSX Rails 6.1: https://andrewm.codes/blog/how-to-install-ruby-on-rails-6-1-with-asdf-on-macos-big-sur/
- https://hub.docker.com/
'
:' enhancements:
- openssl questions
- 
'

:' bash functions:
- bash_proj_profile
- appendLineIfAbsent: echo -e "\n. $(brew --prefix asdf)/asdf.sh" >> ~/.bash_profile bash_project_profile
- processIndentedBlockTpl
- injectBlockIntoFileAtLine
- isSudoer
'
