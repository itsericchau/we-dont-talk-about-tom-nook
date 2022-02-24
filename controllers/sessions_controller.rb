get "/log_in" do
  erb :'sessions/sessions'
end

post "/sessions" do
  username = params["username"]
  # email = params["email"]
  password = params["password"]
  user = find_user_by_username(username)
  if user && BCrypt::Password.new(user["password_digest"]) == params["password"]
    session["user_id"] = user["id"]
    redirect "/"
  else
    "Wrong username or password"
  end
end

delete "/sessions" do
  session["user_id"] = nil
  redirect "/"
end
