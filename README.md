# devise-with-bootstrap-for-heroku

This is a Ruby on Rails application developed using gems devise,
devise-bootstrap-views and bootstrap-generators.

devise gem provides authentication for your app
bootstrap gems provide cool look 
Since this application has both of the above, it can serve as a base for your app.

Another key thing to note that this app is going to use PostGre Sql as the backend
database instead of the default engine Sqlite. This was done to help you deploy any
app developed on top of this easily to Heroku.

# Getting Started

* Create a Ruby on Rails application by cloning this repository.

* Now start your postgres service 
  <pre>
    $ sudo service postgresql start
  </pre>

* Log in to the postgres console using:
  <pre>
    $ sudo sudo -u postgres psql
  </pre>
  You will be seeing something like below:
  <pre>
    psql (9.3.5)
    Type "help" for help.
    
    postgres=#
  </pre>

* Set a password for the user postgres:
  <pre>
    postgres=# \password
    Enter new password: 
    Enter it again: 
  </pre>  

* Come out of the postgres console using:
  <pre>
   postgres=# \q
  <\pre>

* We need to now change a postgres configuration for the db engine to allow us login with username/password
  Open the file pg_hba.conf using:
  <pre>
     $ sudo vi /etc/postgresql/9.3/main/pg_hba.conf
  </pre>
  Go to line 85, modify 'peer' to 'md5' and saw the file.

* Restart the postgresql service using:
  <pre>
    $ sudo service postgresql restart
  </pre>
  If you try to login to the postgres console now, you should be prompted for the password.

* Once you successfully setup postgres, run 'bundle' to install the required gems.
  <pre>
    $ bundle
  </pre>
* Then run db migration using the below command:
  <pre>
    $ rake db:migrate
  </pre>

* Now start your rails server.

* You can access the sign up page from http://YOUR-APP-URL/users/sign_up

And your are all set to develop your actual on top of this.

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
