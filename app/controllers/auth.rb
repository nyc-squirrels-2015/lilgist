get '/' do
  erb :welcome
end

get '/authenticate/user/failure' do
    @error = true
    erb :welcome
end

post '/authenticate/signup.json' do
  content_type :json
  user = User.create(params[:user])
  user.to_json
end



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
