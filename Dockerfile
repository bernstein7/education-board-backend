FROM ruby:2.3.3
RUN apt-get update -qq
RUN apt-get install -y -qq build-essential
RUN apt-get install -y -qq nodejs
RUN apt-get install -y -qq libpq-dev

ENV APP_HOME /app
ENV BUNDLE_PATH /bundle
ENV BUNDLE_JOBS 5

RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

COPY Gemfile Gemfile.lock ./
RUN gem install bundler --no-ri --no-rdoc

ADD . ./

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
