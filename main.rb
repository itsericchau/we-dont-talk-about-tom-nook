require "sinatra"
require "sinatra/realoder" if development?
require "pry" if development?

require_relative "db/db"
get "/" do
  erb :index
end
