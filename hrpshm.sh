#!/bin/bash
heroku maintenance:on --app eip19-prod
dropdb eip-bcup1 -U MustakhimRehan
heroku pg:pull DATABASE_URL eip-bcup1 --app eip19-prod

git push prod-heroku prod_e:master
#heroku run rake db:migrate --app eip19-prod
heroku restart --app eip19-prod
heroku maintenance:off --app eip19-prod
