web: bin/rails server -p ${PORT:-5000} -e $RAILS_ENV
worker: bundle exec rake jobs:work
release: bundle exec rake db:migrate
