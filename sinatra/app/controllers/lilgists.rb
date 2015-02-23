# Ajax Routes # # # #

get '/lilgists.json' do
  content_type :json
  user = User.find(current_user.id)
  lilgists = user.lilgists
  lilgists.to_json
end

get '/lilgists/:id/show.json' do
 content_type :json
 lilgist.find(params[:id]).to_json
end

post '/lilgists/create.json' do
  content_type :json
  lilgist = Lilgist.new(params[:lilgist])
  lilgist.user_id = current_user.id
  lilgist.save
  # lilgist.to_json
end

put '/lilgists/:id/update.json' do
  params.delete "splat"
  params.delete "captures"
  lilgist.find(params[:id]).update_attributes(params)
  redirect "/lilgists/#{params[:id]}"
end

# get '/lilgists/:id/delete' do
#  Lilgist.find(params[:id]).destroy
#  redirect "/"
# end

# get '/lilgists/:id/edit' do
#   @lilgist = Lilgist.find(params[:id])
#   erb :edit
# end

# post '/lilgists/:id/put' do
#   lilgist = Lilgist.find(params[:id])
#   lilgist.update(params[:lilgist])
#   redirect '/'
# end

