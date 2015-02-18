# Ajax Routes # # # #
 
get '/lilgists.json' do
  content_type :json
  lilgist.all.map{ |lgst| lgst.to_hash }.to_json
end

get '/lilgists/:id/show.json' do
 content_type :json
 lilgist.find(params[:id]).to_hash.to_json 
end

post '/lilgists/create.json' do
  content_type :json
  lilgist = lilgist.create( params )
  lilgist.to_hash.to_json
end

put '/lilgists/:id/update.json' do
  params.delete "splat"
  params.delete "captures"
  lilgist.find(params[:id]).update_attributes(params)
  redirect "/lilgists/#{params[:id]}"
end

delete '/lilgists/:id/destroy.json' do
 content_type :json
 lilgist.find(params[:id]).destroy
 redirect "/lilgists" 
end