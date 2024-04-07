FROM ruby:3.3.0-bullseye

ENV REQLESS_UI_HOST="localhost"
ENV REQLESS_UI_PORT="9292"

WORKDIR /app

RUN apt-get update && apt-get install -y libxml2-dev redis-tools

COPY Gemfile .
COPY Gemfile.lock .

RUN NOKOGIRI_USE_SYSTEM_LIBRARIES=1 bundle install

COPY config.ru .

CMD bundle exec rackup --host "$REQLESS_UI_HOST" --port "$REQLESS_UI_PORT"
