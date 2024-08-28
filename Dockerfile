FROM ruby:3.3.0-bullseye

ARG REQLESS_UI_GIT_REF
ARG REQLESS_UI_VERSION

ENV REQLESS_UI_DB_URL="redis://localhost:6379/0"
ENV REQLESS_UI_HOST="localhost"
ENV REQLESS_UI_PORT="9292"

WORKDIR /app

RUN apt-get update && apt-get install -y libxml2-dev redis-tools

COPY Gemfile Gemfile.lock .

RUN NOKOGIRI_USE_SYSTEM_LIBRARIES=1 bundle install

COPY config.ru .

CMD bundle exec rackup --host "$REQLESS_UI_HOST" --port "$REQLESS_UI_PORT"
