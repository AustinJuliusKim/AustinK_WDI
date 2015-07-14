require 'rubygems'
require 'bundler'

Bundler.require

Mongoid.load!('./mongoid.yml')
require './models/song'
require './my_sinatra_app'

run MySinatraApp