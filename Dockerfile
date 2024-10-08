FROM ruby:3.2.2-alpine

RUN apk --no-cache add build-base tzdata

WORKDIR /app

COPY Gemfile .
COPY Gemfile.lock .

RUN bundle install

COPY . .

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]