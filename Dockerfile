FROM ruby:2.6

LABEL maintainer="tim.millar2@gmail.com"

RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \
  nodejs

COPY Gemfile* /usr/src/app/
WORKDIR /usr/src/app/
RUN bundle install

COPY . /usr/src/app/

CMD ["bin/rails", "server", "-b", "0.0.0.0"]
