This is a reproduction of ruby threading not working very well.

You'll want to hook it up to a postgres database, personally I export DATABASE_URL=postgres://meleneth:BLESSYOU@tyreen.sectorfour:5432/rails_xp

after configuring the database and doing rake db:create / rake db:migrate, rails runner generate_data.rb

you will then need to find the ID of a post to query, so rails runner "puts Post.first.id"

put that id in blazemeter/k6-graphql-test.js and change the hostname from thinktank.sectorfour to the machine you are running it on (localhost will not work due to Docker)

you will also need to change the local paths for the volumes in blazemeter/run_benchmark.sh

after you do all that, with rails server running you can run_benchmark and see the issue

you can play with the settings in blazemeter/bzt.yml, it seems to perform worse as the process is stressed.

Different versions of ruby also perform differently, 3.1.3 seems to be worse than 3.2.2
