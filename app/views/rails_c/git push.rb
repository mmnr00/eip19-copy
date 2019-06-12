git add -A
git commit -m "eip"
git push

git checkout master_e
git merge 1wip
git push

git checkout prod_e
git merge master_e
git push

git diff HEAD master_e
git diff HEAD 1wip
git checkout 1wip

heroku maintenance:on --app kidcare-prod
dropdb prod-bcup -U MustakhimRehan
heroku pg:pull DATABASE_URL prod-bcup --app kidcare-prod
git push prod-heroku production_n:master
#heroku run rake db:migrate --app kidcare-prod
heroku restart --app kidcare-prod
heroku maintenance:off --app kidcare-prod

disc = (24.0/28.0).to_f

Taska.find([55,56]).each do |t|
t.discount=disc
t.save
end

