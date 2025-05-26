FROM ruby:3.2

RUN apt-get update && apt-get install -y \
    build-essential \
    libprotobuf-dev \
    protobuf-compiler \
    bash \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /srv/jekyll

COPY Gemfile Gemfile.lock ./

RUN gem install bundler && bundle install

EXPOSE 4000

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--force_polling"]