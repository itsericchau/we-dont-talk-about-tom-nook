require "bcrypt"

def create_user(username, email, password)
  password_digest = BCrypt::Password.create(password)
  run_sql("INSERT INTO users(username, email, password_digest) VALUES($1,$2,$3)", [username, email, password_digest])
end

def find_user_by_username(username)
  users = run_sql("SELECT * FROM users WHERE username = $1", [username])
  if users.to_a.length > 0
    users[0]
  else
    nil
  end
end

def find_user_by_id(id)
  run_sql("SELECT * FROM users WHERE id = $1", [id])[0]
end

def find_username_by_id(user_id)
  run_sql("SELECT username FROM users WHERE id = $1", [user_id])[0]["username"]
end
