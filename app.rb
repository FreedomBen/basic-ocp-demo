#!/usr/bin/env ruby

require 'sinatra'

set :port, 43215
set :bind, '0.0.0.0'

get '/' do
  'You requested my root path!  Nice work!'
end

get '/healthz' do
  'I am quite healthy'
end

get '/freedomben' do
  'https://github.com/FreedomBen'
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

