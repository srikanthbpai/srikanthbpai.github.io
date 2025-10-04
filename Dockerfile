FROM ruby:3.2

# Install required system deps
RUN apt-get update && apt-get install -y \
    build-essential \
    libprotobuf-dev \
    protobuf-compiler \
    bash \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /srv/jekyll

# Copy Gemfile first for better caching
COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install

# Copy the rest of your Jekyll site
COPY . .

# Expose both server and livereload ports
EXPOSE 4000 35729

# Run Jekyll
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--watch", "--livereload", "--force_polling"]