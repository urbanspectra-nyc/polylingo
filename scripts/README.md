## Language Agnostic Local Dev Setups

- We use [asdf](https://asdf-vm.com/) to support any software development language at a given version.
- We share our dev setups and app code via [github](http://github.com).
- We deploy our code to [heroku](http://heroku.com) using the [heroku cli](https://devcenter.heroku.com/articles/heroku-cli-commands).
- This README.md file helps organize our tests with code in [asdf bash functions](asdf-bash-functions.sh).
- Each asdf bash function is supported by one or more tests expressed as yaml files.
- Our first language-frameworks are ruby-rails + elixir-phoenix.
- Support for other dev languages in the near term will be driven by testing.

#### Scripts Directory Structure
- /scripts/ => We intend to migrate this directory to its own [public github repo](https://github.com/urbanspectra-nyc/asdf-tools-across-languages.git).
  - [functions to implement asdf agnostically regarding dev langs ](asdf-bash-functions.sh)
  - [/ruby-rails/](ruby-rails/)
  - [/elixir-phoenix/](elixir-phoenix/)
  - [/node-??/]()
  - [/py3-flask/]()

