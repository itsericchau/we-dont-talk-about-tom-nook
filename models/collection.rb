def insert_record(user_id, item_id, item_type, favourited = false, obtained = false, wishlist = false)
  run_sql("INSERT INTO user_items(user_id,item_id,item_type,favourited,obtained,wishlist) VALUES($1,$2,$3,$4,$5,$6", [user_id, item_id, item_type, favourited, obtained, wishlist])
end
