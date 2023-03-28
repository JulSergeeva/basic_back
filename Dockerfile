FROM ruby:3.0.2

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

WORKDIR /usr/src/app
COPY . .

ENV BUNDLE_PATH /gems
RUN bundle install

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
CMD ["bin/rails", "server", "-b", "0.0.0.0"]

