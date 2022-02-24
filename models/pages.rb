# def insert_record(user_id, item_id, item_type, favourited = false, obtained = false, wishlist = false)
#   run_sql("INSERT INTO user_items(user_id,item_id,item_type,favourited,obtained,wishlist) VALUES($1,$2,$3,$4,$5,$6", [user_id, item_id, item_type, favourited, obtained, wishlist])
# end

def insert_record(user_id, item_id, item_type, wishlist, favourite = false)
  run_sql("INSERT INTO user_items(user_id,item_id,item_type,wishlist,favourite) VALUES($1,$2,$3,$4,$5)", [user_id, item_id, item_type, wishlist, favourite])
end

def get_wishlist(user_id)
  run_sql("SELECT * FROM user_items WHERE user_id = $1 AND wishlist = true ORDER BY favourite DESC", [user_id])
end

def delete_wishlist(id)
  run_sql("DELETE FROM user_items WHERE id = $1", [id])
end

def get_favourites(user_id)
  run_sql("SELECT * FROM user_items WHERE user_id = $1 AND favourite = true", [user_id])
end

def update_favourite(id, favourite)
  run_sql("UPDATE user_items SET favourite = $2 WHERE id = $1", [id, favourite])
end

def remove_favourite(id, favourite)
  run_sql("UPDATE user_items SET favourite = $2 WHERE id = $1", [id, favourite])
end
