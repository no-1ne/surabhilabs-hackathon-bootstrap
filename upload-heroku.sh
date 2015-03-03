git add .
git commit -m "Commit at"+"`date`"
git push heroku master
heroku run rake db:migrate
