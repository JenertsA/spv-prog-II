FROM ruby:3.2.0

RUN apt update && apt install --no-install-recommends -y

WORKDIR /root

RUN echo "Dir[\"/ruby/app/**/*.rb\"].each {|file| require file }" >> .irbrc

WORKDIR ../ruby/app

COPY ruby_app/Gemfile Gemfile
COPY ruby_app/Gemfile.lock Gemfile.lock

ENV BUNDLE_PATH /bundled_gems

RUN bundle update --bundler
RUN bundle install

ENTRYPOINT ["./../docker-entrypoint.dev.sh"]

CMD ["tail", "-F", "log/development.log"]

EXPOSE 4000
