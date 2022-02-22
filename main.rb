require "sinatra"
require "sinatra/reloader" if development?
require "pry" if development?
require "httparty"

require_relative "db/db"

get "/" do
  fishes_api = HTTParty.get("https://acnhapi.com/v1/fish/")
  erb :index,
      locals: {
        fishes_api: fishes_api,
      }
end

get "/sign_up" do
end

get "/log_in" do
end
