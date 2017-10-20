FROM ruby:2.4.2
RUN apt-get update -qq \
    && apt-get install -y --no-install-recommends -qq \
    nano build-essential libpq-dev nodejs mysql-client \
    npm \
    && rm -rf /var/lib/apt/lists/*
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN npm install -q -g phantomjs-prebuilt
WORKDIR /usr/src/app
EXPOSE 3000
