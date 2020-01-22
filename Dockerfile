FROM registry.access.redhat.com/ubi8/ruby-25

COPY . /app

CMD /app/app.rb
