get "/sign_up" do
  erb :'users/sign_up'
end

post "/sign_up" do
  username = params["username"]
  email = params["email"]
  password = params["password"]
  create_user(username, email, password)
  redirect "/"
end
