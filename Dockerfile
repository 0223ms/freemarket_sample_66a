FROM ruby:2.5.1

RUN apt-get update -qq && \
  apt-get install -y build-essential \ 
  libpq-dev \        
  nodejs           

WORKDIR /freemarket_sample_66a

COPY Gemfile Gemfile.lock /freemarket_sample_66a/

RUN bundle install