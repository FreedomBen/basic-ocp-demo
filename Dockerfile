FROM registry.access.redhat.com/ubi8/ruby-25

COPY . /app

WORKDIR /app
RUN bundle install

CMD /app/app.rb
