git add .
git commit -m "Commit at"+"`date`"
heroku login
git push heroku master
heroku run rake db:migrate
