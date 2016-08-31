require 'sinatra'
require 'json'

get '/' do
  content_type :json
  {
    ipaddress: request.ip,
    language: (env['HTTP_ACCEPT_LANGUAGE']).split(',').first,
    software: (env['HTTP_USER_AGENT']).split(%r{(?<=\()(.+?)(?=\))})[1]
  }.to_json
end