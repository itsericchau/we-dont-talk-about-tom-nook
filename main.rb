require "sinatra"
require "sinatra/reloader" if development?
require "pry" if development?
require "httparty"
require "bcrypt"

enable :sessions

require_relative "db/db"
require_relative "models/users"
require_relative "helpers/session_helper"

get "/" do
  fishes_api = HTTParty.get("https://acnhapi.com/v1/fish/")
  erb :index,
      locals: {
        fishes_api: fishes_api,
      }
end

get "/sign_up" do
  erb :sign_up
end

get "/log_in" do
  erb :log_in
end

post "/sign_up" do
  username = params["username"]
  email = params["email"]
  password = params["password"]
  create_user(username, email, password)
  redirect "/"
end

post "/log_in" do
  username = params["username"]
  # email = params["email"]
  password = params["password"]
  user = find_user_by_username(username)
  if user && BCrypt::Password.new(user["password_digest"]) == params["password"]
    session["user_id"] = user["id"]
    redirect "/"
  end
end

delete "/sessions" do
  session["user_id"] = nil
  redirect "/"
end
