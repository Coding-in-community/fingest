FROM ruby:2.6.6-alpine AS base

ENV BUNDLER_VERSION=2.0.2

RUN apk add --update \
      sqlite-dev \
      tzdata \
      nodejs \
      yarn

RUN apk add --update build-base

RUN gem install bundler -v 2.0.2

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle config build.nokogiri --use-system-libraries

RUN bundle check || bundle install

COPY package.json yarn.lock ./

RUN yarn install --check-files

COPY . ./

ENTRYPOINT ["./entrypoints/docker-entrypoint.sh"]