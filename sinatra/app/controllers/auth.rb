 # non ajax

get '/' do
  unless current_user
    erb :welcome
  else
    erb :index
  end
end

get '/authenticate/user/failure' do
    @error = true
    erb :welcome
end

post '/users' do
  user = User.create(params[:user])
  session[:user_id] = user.id
  redirect '/'
end

post '/login' do
  user = User.find_by(name: params[:user][:name])
  if user.try(:authenticate, params[:user][:password])
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end


# post '/authenticate/signup.json' do
#   content_type :json
#   user = User.create(params[:user])
#   p params
#   user.to_json
# end



post '/authenticate/user' do
  @error = false
  user = User.find_by_name(params[:name])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.user_id
    redirect '/'
  else
    redirect '/authenticate/user/failure'
  end
end

get '/authenticate/logout.json' do
  session[:user_id] = nil
  200
end
