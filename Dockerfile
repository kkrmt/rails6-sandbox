# Ruby 3.0.2
FROM ruby:3.0.2

MAINTAINER kkrmt

# for frontend(webpack)
# install yarn tools
RUN apt-get update && apt-get install -y curl apt-transport-https wget && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn

RUN apt-get update -qq && apt-get install -y nodejs yarn

RUN mkdir -p /var/www/web/myapp
WORKDIR /var/www/web/myapp

COPY Gemfile /var/www/web/myapp/Gemfile
COPY Gemfile.lock /var/www/web/myapp/Gemfile.lock
RUN bundle install
COPY . /var/www/web/myapp

RUN yarn install --check-files
RUN bundle exec rails webpacker:compile

# Add a script to be executed every time the container starts.
#COPY entrypoint.sh /usr/bin/
#ENTRYPOINT ["./entrypoint.sh"]
#EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
