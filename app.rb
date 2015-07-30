require 'sinatra'
require "sinatra/activerecord"

require_relative 'models/post'

require 'pry'

get '/' do
  @posts = Post.all
  erb :index
end
