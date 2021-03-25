FROM registry.access.redhat.com/ubi8/ruby-27

COPY Gemfile Gemfile.lock /app

WORKDIR /app
USER root
RUN bundle install

COPY . /app

USER default
EXPOSE 4567
CMD /app/app.rb
