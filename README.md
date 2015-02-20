# devise-with-bootstrap

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
 
* Once you successfully clone the repo, run 'bundle' to install the required gems.
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

Cool, ain't it??



