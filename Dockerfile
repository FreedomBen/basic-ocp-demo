FROM registry.access.redhat.com/ubi8/ruby-25

COPY . /app

WORKDIR /app
USER root
RUN bundle install

USER default
EXPOSE 4567
CMD /app/app.rb
