# devise-with-bootstrap-for-heroku

This is a Ruby on Rails application developed using gems devise,
devise-bootstrap-views and bootstrap-generators.

devise gem provides authentication for your app
bootstrap gems provide cool look 
Since this application has both of the above, it can serve as a base for your app.
# Getting Started
 <pre>
 $ bundle
 </pre>
* Then run db migration using the below command:
 <pre>
 $ rake db:migrate
 </pre>
Now start your rails server


# Publishing the app to Heroku

* Sign up for an account at Heroku [ www.heroku.com]

* Come back to your c9 workspace, and login to your heroku account using:
  <pre>
    $ heroku login
  </pre>
  You will be prompted to enter your email address and password you signed up with heroku.
  You should be able to see that your authentication is successful.
 
* We should now create a remote workspace for our heroku production environment.
  <pre>
    $ heroku create
  </pre>
  After the above command, we will see that a remote git hook is created.
  
* Now we can push your code to heroku .
  <pre>
    $ git push heroku master
  </pre>
  After this command you should be seeing your code getting deployed to heroku.

* We need to instruct heroku to run the db migration scripts.
  <pre>
    $ heroku run rake db:migrate
  </pre>

* After a successful migration, you can see the user sign_up page at http://YOUR-HEROKU-APP-URL/users/sign_up
 
* We can now start scaffolding based on our requirement.
