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

get "/change_email" do
  user_id = session["user_id"]
  email = find_email_by_user_id(user_id)
  erb :'users/change_email',
      locals: {
        email: email,
      }
end

put "/change_email" do
  email = params["new_email"]
  user_id = session["user_id"]
  update_email(user_id, email)
  redirect "/"
end
