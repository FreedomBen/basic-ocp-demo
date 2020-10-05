#!/usr/bin/env ruby

require 'sinatra'

set :port, 4567      # Sinatra default
set :bind, '0.0.0.0'

#ROOT_HTML = <<-EOF
#  <html lang="en">
#    <head>
#      <title>OpenShift Test Application</title>
#    </head>
#    <body>
#      <h1>This p</h1>
#    </body>
#  </html>
#EOF

get '/' do
  erb :index, :locals => {:name => params[:name]}
end

get '/healthz' do
  {
    ok: true,
    datetime: Time.now.getutc
  }.to_json
end

