require "sinatra"
require "sinatra/reloader" if development?
require "pry" if development?
require "httparty"
require "bcrypt"

enable :sessions

require_relative "db/db"
require_relative "models/users"
require_relative "models/pages"
require_relative "helpers/session_helper"
require_relative "controllers/users_controller"
require_relative "controllers/items_controller"
require_relative "controllers/sessions_controller"
