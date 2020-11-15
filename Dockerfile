FROM ruby:2.7.2-alpine

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./

RUN apk add --no-cache \
      build-base \
      && \
      bundle install --jobs=5 && \
      rm -rf /var/cache/apk/*

