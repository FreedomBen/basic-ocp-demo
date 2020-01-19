#!/usr/bin/env ruby

require 'sinatra'

set :port, 43215
set :bind, '0.0.0.0'

get '/' do
  'ok'
end

get '/healthz' do
  'ok'
end

post '/hit' do
  body = request.body.read
  #unless blacklisted_ip?(body)
  #  File.open(LOG_FILE, 'a') do |f|
  #    f.puts(body)
  #  end
  #end
  'ok'
end

