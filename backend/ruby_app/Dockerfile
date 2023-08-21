FROM ruby:3.0

RUN apt update && apt install --no-install-recommends -y tmux

WORKDIR /app

COPY ruby_app/Gemfile Gemfile
COPY ruby_app/Gemfile.lock Gemfile.lock

ENV BUNDLE_PATH /bundled_gems
RUN bundle install

ENTRYPOINT ["./docker-entrypoint.dev.sh"]

CMD ["tail", "-F", "log/development.log"]

EXPOSE 4000
