## polylingo ![]()

Open source educational software design, supported by multi-lingual teaching and learning.

- Collaborative Web App Prototyping Teams = [Developers+Instructors+Students] => [Design+Test+Build+Deploy]

---

### Table of Contents
- [Mile High Overview](#mile-high-overview)
- [Run Web App Demo For Prototyping](#run-web-app-demo-for-prototyping)
- [Local Dev Setups](#local-dev-setups)
- [Local Dev Testing](#local-dev-testing)
- [Heroku Remote Hosting Local Setups](#heroku-remote-hosting-local-setups)
- [Heroku Remote Service Deployment](#heroku-remote-service-deployment)
- [Troubleshooting](#troubleshooting)
- [Types of Contributors](#types-of-contributors)
- [Tools For Seasoned Developers](#tools-for-seasoned-developers)
- [Task Management](#task-management)
- [Related Projects](#related-projects)
- [References](#references)
---

#### Mile High Overview

- Devs
  - Setup Local Dev Environment + Stand Up App As Is.
  - Setup Local Deployment Tooling + Redeploy To Heroku.
  - Setup Local System For Redeploying To Your Own Heroku App Hosting.
  - Add Example Local Feature: [ Test + Code + Tag ].
  - Redeploy Enhanced Demo To Self-Hosted Heroku.
  - Invite Instructors To Private Test-Driven Feature Demo.

Broaden scope of project grasp =>  [Detailed Overview](/readmeResources/detailed-overview.md)

Skim this before your test-drive =>  [Web App Prototype Feature Requests](/readmeResources/feature-requests.md)

- Instructors & Students
  - Test-Drive Public Demo Web App + Foundational Features

---

#### Run Web App Demo For Prototyping

- [Publicly Hosted Web Demo](https://uni-lingo.herokuapp.com/)
  - Connect and review supported languages.
  - Login as Guest.  Register.
  - Logout. Login.
  - Choose Languages Of Interest.
  - Reflect On Test-Driven Feature Development

---

#### Local Dev Setups

- Dev Tools
  - [Standard Ruby Env Manager](https://github.com/rbenv/rbenv)
  - [Emerging Language-Agnostic Environment Versioning Using asdf](https://asdf-vm.com/)
    - [asdf Ruby Plug-In](https://github.com/asdf-vm/asdf-ruby)

- Dependencies
  - Assumes basic familiarity with:
    - Ruby on [Rails](https://guides.rubyonrails.org/v6.0.2.1/command_line.html)
    - [Git](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup)
  - ruby version >= ruby 2.5.1p5: ``` $ ruby -v ```
  - rails version 6.1.4.1: ``` $ rails -v ```
  - ``` $ git clone git@github.com:urbanspectra-nyc/unilingo.git ; cd unilingo ```
  - If bundler gem is installed, then just run: ``` $ bundle ```
    - Else install the bundler gem with following command: ``` $ gem install bundler:2.2.15```
  - After bundle is executed successfully, create db by running following command: ``` $ rails db:create rails db:migrate Rails db:seed```

---

#### Local Dev Testing
- Browse to [Local App URL](https://localhost:34456)

- Repository Tour For Developers
  - tree: sitemap + dirs
  - gists
  - dojos
  - environments

- [Test-Driven Feature Development]()

---

#### Heroku Remote Hosting Local Setups
- Assumes basic familiarity with Ruby/Rails and Git.
- Requires locally installed version of Ruby 2.5.0+, Rubygems, Bundler, and Rails 6+
- Requires heroku user [account link](https://signup.heroku.com/devcenter)
- Install the [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli#download-and-install) on your development machine.
- Once installed, the heroku command is available from your terminal.  ``` $ heroku -help ```
- Log in using your Heroku account’s email address and password:  ```$ heroku login```
  - Enter your Heroku credentials
    - Email: < heroku account email >
    - Password: < heroku account password >

---

#### Heroku Remote Service Deployment

##### Deploy your application to Heroku
- Make sure you are in the directory that contains your Rails app, then create an app on Heroku:
```$ heroku create <your app name>```

##### Verify deployment

- Remote heroku target was added to your project by running: ```$ git config --list --local | grep heroku```
- If you see 'fatal: not in a git directory' then you are likely not in the correct directory. Otherwise, you can deploy your code.

- Deploy your code to heroku under your own account using: ``` $ git push heroku master ```
- After deploying code, we need to migrate our database, make sure it is properly scaled, and use logs to debug any issues that come up.
To push branch other than master use the following command:  ``` $ git push heroku <your-branch-name>:master ```

Migrate your database 
If you are using the database in your application, you need to manually migrate the database by running:
``` $ heroku run rake db:migrate ```
Any commands after the heroku run are executed on a Heroku dyno.
You can obtain an interactive shell session by running: ``` $ heroku run bash ```
We can now visit the app in our browser with command: ``` $ heroku open ```

---

#### Troubleshooting

- Local Setups + Testing

- Heroku Setups + Deployments
  - Complete Heroku CLI [Docs](https://devcenter.heroku.com/categories/command-line)
  - If you run into any problems getting your app to perform properly, then you will need to check the logs.
    - View information about your running app using one of the logging commands: ``` $ heroku logs -t ```
  - Run the Rails console.
    - Heroku supports a one-off "dyno" using the heroku run command.
  - To launch a Rails console process attached to your local terminal for experimenting in your app’s environment:
  ``` $ heroku run rails console ```

---

#### Types of Contributors
- Adoptors In Education
  - Instructors
  - Students
- Ruby on Rails 6.x Devs
- Ruby Sinatra Devs
- React + Node Devs
- Elixir + Phoenix Devs
- PHP + Symfony Devs
- Python3 + Flask Devs

---

#### Tools For Seasoned Developers
  - docker
  - gitpod
  - diagrams.net
  - docusaurus
  - github pages + [gitbook](https://app.gitbook.com/@jeremy-donson/s/polylingo/)
  - github actions
  - cloud shell
  - helm
  - k8s
  - [Deploy Elixir App To Heroku](https://alchemist.camp/episodes/deploy-phoenix-heroku)
  - [Elixir i18n](https://hexdocs.pm/gettext/Gettext.html)
  - [Sample Elixir App]()
  - [Extend Ruby on Rails]()
  - [Port to Elixir-Phoenix from Ruby on Rails](https://github.com/mauricew/from-activerecord-to-ecto)
  - [Port to Ruby-Sinatra from Ruby On Rails ]()
  - [Port to PHP-Symfony from Ruby On Rails]()
  - [Port to Py3-Flask from Ruby On Rails]()
  - [Port to Node-React from Elixir-Phoenix]()
  - [Mobile Strategy]()
  - [Speech-To-Text Strategy]
    - [GCP](https://cloud.google.com/speech-to-text)
    - [Flutter](https://www.youtube.com/watch?v=-rQ_OmPj300&ab_channel=TensorProgramming)

---

#### Task Management
- Product Team Roles: Product Manager + Technical Project Managers + Instructors + Developers + Engineers + Docs + APIs
- Issue Types
- Issue Triage
- Issue Templates
- PR Types
- PR Triage
- PR Templates
- Tech Workflows
- Educational Workflows
- [Current + Pending Tasks](readmeResources/tasks.md) => Move to issues!!

---

#### Related Projects
- [Example Elixir Web App: rUrls](https://github.com/toranb/elixir-url-shortener)
- [Elixir package for Oauth authentication via Google Cloud APIs](https://github.com/peburrows/goth)
- [Rails Barter App](https://github.com/celias/barter-app)
- [Rails Crossword Puzzle Authoring App](https://github.com/andrewprogers/crossword-react-on-rails)
- [Example Beginner Structured Taxonomy Development]()
- [Unilingo Advanced Structured Taxonomy Evolution]()

---

#### References
- [ASDF Plug-In: Ruby](https://github.com/asdf-vm/asdf-ruby)
- [Heroku Docs: Rails6](https://devcenter.heroku.com/articles/getting-started-with-rails6)
- [Heroku Docs: CLI](https://devcenter.heroku.com/categories/command-line)
- [Heroku Docs: Terraform](https://devcenter.heroku.com/articles/using-terraform-with-heroku)
- [Terraform Provider: Heroku](https://registry.terraform.io/providers/heroku/heroku/latest/docs)
- [Terraform Automation: Github Actions](https://learn.hashicorp.com/tutorials/terraform/github-actions )
- [Terraform Secrets: sops](https://medium.com/cloudandthings/terraform-git-commit-m-all-the-secrets-5dfea9b111de)
- [Terraform Cloud Workspaces](https://app.terraform.io/app/urbanspectra/workspaces/new)

---

### These days, web apps are mostly built from...
- microsoft and other proprietary software
- wordpress, drupal (php)
- ruby on rails
- python flask or django
- java etc
- node react
- ruby sinatra
- elixir

Each of the items above can be represented with 1-2 icons.
That lends itself to web diagramming. We use http://diagrams.net for that.

- [Free course](https://www.udemy.com/course/5g-for-absolute-beginners/) to reference when tawkin 5g to the masses.

- [world database with updates](https://www.visualcapitalist.com/a-world-of-languages/)

- [tweet-to-text](https://merlin.allaboutbirds.org/bird-packs/)

- [Audio machine learning](https://www.macaulaylibrary.org/machine-learning/)

- [Roget Online Thesaurus](http://www.roget.org/scripts/qq.php)

- [SVG Globe](https://codecanyon.net/item/animated-svg-globe-with-markers-and-logos/9844557)

- [Rail6 Testing Youtube Tutorial](https://www.youtube.com/watch?v=AAqPc0j_2bg&ab_channel=Deanin)

---
Proposed format of tech README.md doc...

- Project Title: polylingo

- Repository Title: polylingo
- Description: multilingual solutions for teaching and learning

- Demo URL
- Demo Instructions
- User Demo Support Requests

- User Demo Feature Requests

- Audiences
- Issue Types

- Install Deps For Local App Setup
- Clone + Stand Up Local App

- Local App Dev Debugging
- Local App Dev Prototyping
- Deploy To Heroku

- Pull Requests
- Automate Deployments
- Dockerize Dev Env
- Automate Dockerization + k8sDeploys
- Gitpods For Dev Env
- Building Teams

---

Dev Languages + Frameworks:
- ruby-rails
- elixir-phoenix
- node-react
- python-flask
- flutter mobile

---

Diagrams and gists are good to tie together.

Diagrams:  https://gist.github.com/jeremy-donson/9882a07c8a508973755bf36de6069e56

Gist to get you started with ghmd in an interactive fashion:  https://gist.github.com/jeremy-donson/e60eafe1320aebb396397b00bba33797

Diagram we were working up the other day:  https://drive.google.com/file/d/1oOoXOQfU8dYCrm2JmSFBfpb3uQ6Tfkz_/view?usp=sharing

A list of diagram types we will use is there.  There is also a link to another diagram focused on venn diagrams.

Gamification of polylingo is helpful:
- crosswords
- venns
- say what you see
- org sentences from words
- other

In each case we would need to clearly define how an instructor:
- picks languages of interest
- picks language of focus
- plays with game in simple demo
- plays with game that depends upon user-defined content from another instructor
- downloads into dojo the user-defined content from another instructor

rogue2vogue
dojo2mojo

- https://diagrams.mingrammer.com/
- https://mermaid-js.github.io/mermaid/#/
- https://mermaid-js.github.io/mermaid-live-editor/
- https://pencil.evolus.vn/Downloads.html
- https://www.heroku.com/training-and-education
- http://seminar.mmc.nsu.ru/en.php
- https://www.kdnuggets.com/2018/12/activewizards-comparison-speech-processing-apis.html
