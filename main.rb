require "sinatra"
require "sinatra/reloader" if development?
require "pry" if development?
require "httparty"
require "bcrypt"

enable :sessions

require_relative "db/db"
require_relative "models/users"
require_relative "helpers/session_helper"
require_relative "controllers/users_controller"

get "/" do
  erb :index
end

get "/fishes" do
  fish = params["fish"]
  fishes_api = HTTParty.get("https://acnhapi.com/v1/fish/#{fish}")
  erb :'pages/fishes',
      locals: {
        fishes_api: fishes_api,
      }
end

get "/villagers" do
  villager = params["villagers"]
  villagers_api = HTTParty.get("https://acnhapi.com/v1/villagers/#{villager}")
  erb :'pages/villagers',
      locals: {
        villagers_api: villagers_api,
      }
end

get "/bugs" do
  bug = params["bugs"]
  bugs_api = HTTParty.get("https://acnhapi.com/v1/bugs/#{bug}")
  erb :'pages/bugs',
      locals: {
        bugs_api: bugs_api,
      }
end
