require 'rubygems'
require 'sinatra'
require './header-parser'

set :enviroment, :development
set :run, false
set :raise_errors, true

run Sinatra::Application