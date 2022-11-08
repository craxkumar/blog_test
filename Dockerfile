FROM ruby:2.6.3
RUN apt-get update -qq \
&& apt-get install -y nodejs postgresql-client
ADD . /workDir
WORKDIR /workDir
RUN bundle install
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
