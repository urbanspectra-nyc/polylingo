## UniLingo 

##### Local Dev Setup
- ruby version >= ruby 2.5.1p5: ``` $ ruby -v ```
- rails version 6.1.4.1: ```$ rails -v ```
- If you have bundler gem installed run: ``` $ bundle```
- Else install the bundler gem with following command: ```$ gem install bundler:2.2.15```
- After bundle is executed successfully, create db by running following command: ```$ rails db:create rails db:migrate Rails db:seed```

##### Local Dev Testing
- Browse to localhost:34456
- Connect as guest.  Register.  Logout. Login.

##### Deploy To Heroku
- Assumes basic familiarity with Ruby/Rails and Git.
- Requires locally installed version of Ruby 2.5.0+, Rubygems, Bundler, and Rails 6+
- Requires heroku user [account link](https://signup.heroku.com/devcenter)
- Install the [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli#download-and-install) on your development machine.
- Once installed, the heroku command is available from your terminal.

### Local Setup For Heroku Deployments
- Log in using your Heroku account’s email address and password:
```$ heroku login```
 heroku: Enter your Heroku credentials
 Email: <heroku account email>
 Password:< heroku account password >

- Deploy your application to Heroku
- Make sure you are in the directory that contains your Rails app, then create an app on Heroku:
```$ heroku create <your app name>```
- Verify that the remote was added to your project by running:
```$ git config --list --local | grep heroku```
- If you see fatal: not in a git directory then you are likely not in the correct directory. Otherwise, you can deploy your code.

- After you deploy your code, you need to migrate your database, make sure it is properly scaled, and use logs to debug any issues that come up.
Deploy your code using : $ git push heroku master
if you want to push branch other than master use the following command
$ git push heroku <your-branch-name>:master Migrate your database
If you are using the database in your application, you need to manually migrate the database by running:
$ heroku run rake db:migrate
Any commands after the heroku run are executed on a Heroku dyno. You can obtain an interactive shell session by running

 $ heroku run bash
We can now visit the app in our browser with command:
$ heroku open
If you run into any problems getting your app to perform properly, you will need to check the logs.
You can view information about your running app using one of the logging commands:
$ heroku logs -t
Run the Rails console
Heroku allows you to run commands in a one-off dyno - scripts and applications that only need to be executed when needed - using the heroku run command. Use this to launch a Rails console process attached to your local terminal for experimenting in your app’s environment:

$ heroku run rails console


### Next Steps
- [x] Updating rails to latest version.
- [x] Resolving gem issues.
- [x] Deployment to [heroku](https://uni-lingo.herokuapp.com/)
- [ ] Test Docs
  - [ ] User Docs
  - [ ] Developer Docs
- [ ] Split {Poly,Uni}Lingo
- [ ] Responsive Web Apps
- [ ] Mobile Phone Apps
