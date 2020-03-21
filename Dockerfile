FROM ruby:2.5

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1
RUN gem install jekyll bundler

VOLUME [ "/app" ]
WORKDIR /app
