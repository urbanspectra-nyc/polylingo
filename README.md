## polylingo ![]()

... is a Web App Prototyping Platform, supporting collaborative design of open source multi-lingual teaching and learning services.

Collaborators = [ Developers + Instructors + Students ]

---

### Table of Contents
- [Mile High Overview](#mile-high-overview)
- [Run Web App Demo For Prototyping](#run-web-app-demo-for-prototyping)
- [Local Dev Setups](#local-dev-setups)
- [Local Dev Testing](#local-dev-testing)
- [Heroku Deployment Local Setups](#heroku-deployment-local-setups)
- [Deploy To Heroku](#deploy-to-heroku)
- [Troubleshooting](#troubleshooting)
- [Contributors](#contributors)
- [Related Projects](#related-projects)
- [Current Tasks](#current-tasks)
- [Pending Tasks](#pending-tasks)

---

#### Mile High Overview
- Instructors + Students: Test-Drive Public Demo Web App + Recommend Features
- Devs
  - Setup Local Dev Environment + Stand Up App As Is.
  - Add Example Feature: [ Test + Code + Tag ].
  - Setup Local System For Redeploying To Your Own Heroku App Hosting.
  - Redeploy Enhanced Demo To Self-Hosted Heroku.
  - Invite Instructors To Private Test-Driven Feature Demo.

=>  [Detailed Overview](/readmeResources/detailed-overview.md) <=
=>  [Web App Prorotype Feature Requests](/readmeResources/feature-requests.md) <=

#### Run Web App Demo For Prototyping

- [Public Web Demo](https://uni-lingo.herokuapp.com/)
  - Connect and review supported languages.
    - How to add supported language?
    - How to peruse world languages?
    - What kinds of English?

  - Login as Guest. Register.
    - Registration OpenAuth: gmail ID
    - Registration OpenAuth: github ID
    - Registration Profile Page: /??
    - Registration Data Point: Instructor or Student
    - Registration Data Point: Native Language
    - Registration Data Point: Gmail ID
    - Registration Data Point: Geographical (x,y)

    - Instructor Registration Options: Faculty Interests = SET ('curriculum design', 'instruction', 'assessment')
    - Instructor Registration Options: Batch Pre-Registration

  - Choose Languages Of Interest.
    - How to select tracks and lessons?
    - How to create new tracks and lessons?
    - How to gamify new tracks and lessons?
    - How to add social learning features?

  - Logout. Login.
    - ??: Invite To Demo = Feature@Tag:Release => Scheduled?

#### Local Dev Setups

- Dev Tools
  - [Standard Ruby Env Manager](https://github.com/rbenv/rbenv)
  - [Emerging Language-Agnostic Environment Versioning Using asdf](https://asdf-vm.com/)
    - [asdf Ruby Plug-In](https://github.com/asdf-vm/asdf-ruby)

- Dependencies
  - Assumes basic familiarity with Ruby on Rails and Git.
  - ruby version >= ruby 2.5.1p5: ``` $ ruby -v ```
  - rails version 6.1.4.1: ``` $ rails -v ```
  - ``` $ git clone git@github.com:urbanspectra-nyc/unilingo.git ; cd unilingo ```
  - If bundler gem is installed, then just run: ``` $ bundle ```
    - Else install the bundler gem with following command: ``` $ gem install bundler:2.2.15```
  - After bundle is executed successfully, create db by running following command: ``` $ rails db:create rails db:migrate Rails db:seed```

#### Local Dev Testing
- Browse to [Local App URL](https://localhost:34456)
- Repo Tour ??
  - Tree ??
  - docker
  - gitpod
  - github actions
  - cloud shell

#### Heroku Deployment Local Setups
- Assumes basic familiarity with Ruby/Rails and Git.
- Requires locally installed version of Ruby 2.5.0+, Rubygems, Bundler, and Rails 6+
- Requires heroku user [account link](https://signup.heroku.com/devcenter)
- Install the [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli#download-and-install) on your development machine.
- Once installed, the heroku command is available from your terminal.  ``` $ heroku -help ```

#### Deploy To Heroku
- Log in using your Heroku account’s email address and password:  ```$ heroku login```
  - Enter your Heroku credentials
    - Email: < heroku account email >
    - Password: < heroku account password >

- Deploy your application to Heroku
- Make sure you are in the directory that contains your Rails app, then create an app on Heroku:
```$ heroku create <your app name>```

- Verify that the remote was added to your project by running:
```$ git config --list --local | grep heroku```

- If you see fatal: not in a git directory then you are likely not in the correct directory. Otherwise, you can deploy your code.

- Deploy your code to heroku under your own account using: ``` $ git push heroku master ```

- After deploying code, we need to migrate our database, make sure it is properly scaled, and use logs to debug any issues that come up.

To push branch other than master use the following command:  ``` $ git push heroku <your-branch-name>:master ```

Migrate your database 
If you are using the database in your application, you need to manually migrate the database by running:
``` $ heroku run rake db:migrate ```
Any commands after the heroku run are executed on a Heroku dyno.
You can obtain an interactive shell session by running: ``` $ heroku run bash ```

We can now visit the app in our browser with command: ``` $ heroku open ```


#### Troubleshooting

- Local Setups + Testing

- Heroku Setups + Deployments
  - Complete Heroku CLI [Docs](https://devcenter.heroku.com/categories/command-line)
  - If you run into any problems getting your app to perform properly, you will need to check the logs.
    - You can view information about your running app using one of the logging commands: ``` $ heroku logs -t ```
  - Run the Rails console.
    - Heroku supports a one-off "dyno" using the heroku run command.
  - Use this to launch a Rails console process attached to your local terminal for experimenting in your app’s environment:
  ``` $ heroku run rails console ```

#### Contributors
- Adopters
- Ruby on Rails Devs
- Ruby Sinatra Devs
- React Devs
- Elixir Devs
- Educators
  - Instructors
  - Students

#### Related Projects
- sample elixir web app1
- example structured taxonomy development
- unilingo advanced structured taxonomy evolution

#### Current Tasks
- [ ] Gem issues solved.
- [ ] Rails version updated (screenshot attached).
- [ ] Deployed to heroku: https://uni-lingo.herokuapp.com/
- [ ] Latest code pushed on github:
- [ ] PR Link: https://github.com/jdarmoni/DuoJuo/pull/28 => unilingo repo
- [ ] Document with instructions has been attached.
- [ ] Leverage Issues
- [ ] Elixir Custom URL Creator
- [ ] Docker
- [ ] Gitpod

#### Pending Tasks
- [x] Updating rails to latest version.
- [x] Resolving gem issues.
- [x] Deployment to [heroku](https://uni-lingo.herokuapp.com/)
- [ ] Add logo
- [ ] Test Docs
  - [ ] User Docs
  - [ ] Developer Docs
  - [ ] Contributor Docs
- [ ] Split {Poly,Uni}Lingo
- [ ] Responsive Web Apps
- [ ] Mobile Phone Apps
- [Speech Recog](https://www.youtube.com/watch?v=-rQ_OmPj300&ab_channel=TensorProgramming)
