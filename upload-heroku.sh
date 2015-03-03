git add -A
git commit -m "Commit at"+"`date`"
git remote remove heroku
heroku login
heroku create
git push heroku master
heroku run rake db:migrate
heroku run rake db:migrate
