# Homepage (Root path)
get '/' do
  erb :index
end

get '/map' do
  erb :'map/index'
end