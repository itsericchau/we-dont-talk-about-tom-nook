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
  erb :'pages/index'
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

get "/fossils" do
  fossil = params["fossils"]
  fossils_api = HTTParty.get("https://acnhapi.com/v1/fossils/#{fossil}")
  erb :'pages/fossils',
      locals: {
        fossils_api: fossils_api,
      }
end

get "/arts" do
  art = params["name"]
  arts_api = HTTParty.get("https://acnhapi.com/v1/art/#{art}")
  erb :'pages/arts',
      locals: {
        arts_api: arts_api,
      }
end

post "/wishlist_art" do
  art_name = params["name"]
  art_id = params["id"]
  item_type = params["item_type"]
  user_id = sessions["user_id"]
  wishlist = params["wishlist"]
  arts_api = HTTParty.get("https://acnhapi.com/v1/art/#{art_name}")
  insert_record(user_id, art_id, art_name, item_type, wishlist)
  redirect "/"
end

get "/songs" do
  song = params["songs"]
  songs_api = HTTParty.get("https://acnhapi.com/v1/songs/#{song}")
  erb :'pages/songs',
      locals: {
        songs_api: songs_api,
      }
end

get "/sea_creatures" do
  sea_creature = params["sea_creatures"]
  sea_creatures_api = HTTParty.get("https://acnhapi.com/v1/sea/#{sea_creature}")
  erb :'pages/sea_creatures',
      locals: {
        sea_creatures_api: sea_creatures_api,
      }
end
