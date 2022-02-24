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

post "/wishlist_fishes" do
  fish_name = params["fish_name"]
  user_id = session["user_id"]
  item_id = params["item_id"]
  item_type = "fish"
  wishlist = true
  insert_record(user_id, item_id, item_type, wishlist)
  redirect "/fishes"
end

get "/villagers" do
  villager = params["villager"]
  villagers_api = HTTParty.get("https://acnhapi.com/v1/villagers/#{villager}")
  erb :'pages/villagers',
      locals: {
        villagers_api: villagers_api,
      }
end

post "/wishlist_villagers" do
  villager_name = params["villager_name"]
  user_id = session["user_id"]
  item_id = params["item_id"]
  item_type = "villagers"
  wishlist = true
  insert_record(user_id, item_id, item_type, wishlist)
  redirect "/villagers"
end

get "/arts" do
  art = params["name"]
  arts_api = HTTParty.get("https://acnhapi.com/v1/art/#{art}")
  erb :'pages/arts',
      locals: {
        arts_api: arts_api,
      }
end

post "/wishlist_arts" do
  art_name = params["art_name"]
  user_id = session["user_id"]
  item_id = params["item_id"]
  item_type = "art"
  wishlist = true
  insert_record(user_id, item_id, item_type, wishlist)
  redirect "/arts"
end

get "/bugs" do
  bug = params["bugs"]
  bugs_api = HTTParty.get("https://acnhapi.com/v1/bugs/#{bug}")
  erb :'pages/bugs',
      locals: {
        bugs_api: bugs_api,
      }
end

post "/wishlist_bugs" do
  bug_name = params["bug_name"]
  user_id = session["user_id"]
  item_id = params["item_id"]
  item_type = "bugs"
  wishlist = true
  insert_record(user_id, item_id, item_type, wishlist)
  redirect "/bugs"
end

# get "/fossils" do
#   fossil = params["fossils"]
#   fossils_api = HTTParty.get("https://acnhapi.com/v1/fossils/#{fossil}")
#   erb :'pages/fossils',
#       locals: {
#         fossils_api: fossils_api,
#       }
# end

# post "/wishlist_fossils" do
#   fossil_name = params["fossil_name"]
#   user_id = session["user_id"]
#   item_id = params["item_id"]
#   item_type = "fossils"
#   wishlist = true
#   insert_record(user_id, item_id, item_type, wishlist)
#   redirect "/fossils"
# end

get "/sea_creatures" do
  sea_creature = params["sea_creatures"]
  sea_creatures_api = HTTParty.get("https://acnhapi.com/v1/sea/#{sea_creature}")
  erb :'pages/sea_creatures',
      locals: {
        sea_creatures_api: sea_creatures_api,
      }
end

post "/wishlist_sea_creatures" do
  sea_creature_name = params["sea_creature_name"]
  user_id = session["user_id"]
  item_id = params["item_id"]
  item_type = "sea"
  wishlist = true
  insert_record(user_id, item_id, item_type, wishlist)
  redirect "/sea_creatures"
end

get "/songs" do
  song = params["songs"]
  songs_api = HTTParty.get("https://acnhapi.com/v1/songs/#{song}")
  erb :'pages/songs',
      locals: {
        songs_api: songs_api,
      }
end

post "/wishlist_songs" do
  song_name = params["song_name"]
  user_id = session["user_id"]
  item_id = params["item_id"]
  item_type = "songs"
  wishlist = true
  insert_record(user_id, item_id, item_type, wishlist)
  redirect "/songs"
end

get "/wishlist" do
  user_id = session["user_id"]
  wishlist = get_wishlist(user_id)
  username = find_username_by_id(user_id)
  erb :'users/wishlist',
      locals: {
        user_id: user_id,
        wishlist: wishlist,
        username: username,
      }
end

put "/favourite_wishlist" do
  favourite = true
  id = params["id"]
  update_favourite(id, favourite)
  redirect "/wishlist"
end

delete "/delete_wishlist" do
  id = params["id"]
  delete_wishlist(id)
  redirect "/wishlist"
end

get "/favourites" do
  user_id = session["user_id"]
  favourites = get_favourites(user_id)
  username = find_username_by_id(user_id)
  erb :'users/favourites',
      locals: {
        user_id: user_id,
        favourites: favourites,
        username: username,
      }
end

delete "/remove_favourites" do
  id = params["id"]
  favourite = false
  remove_favourite(id, favourite)
  redirect "/favourites"
end
