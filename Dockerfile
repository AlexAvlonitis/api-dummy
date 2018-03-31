FROM ruby:2.5.1

RUN apt-get -qq update && apt-get -qy install build-essential libpq-dev libv8-dev libsqlite3-dev
RUN mkdir /api-dummy
WORKDIR /api-dummy
COPY Gemfile /api-dummy/Gemfile
COPY Gemfile.lock /api-dummy/Gemfile.lock
RUN bundle install

COPY . /api-dummy
RUN rails db:migrate
RUN rails db:seed

CMD rails s
