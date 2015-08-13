# Homepage (Root path)
get '/' do
  erb :'index'
end

get '/login' do
  erb :'login'
end

get '/logout' do
  erb :'logout'
end

get '/users/:id' do
  erb :'users/show'
end

get '/users/:id/edit' do
  erb :'users/edit'
end

get '/comedians/:id' do
  @comedian = Comedian.find(params[:id])
  @events = Event.where(comedian_id: @comedian.id)
  erb :'comedians/show'
end

get '/comedians/:id/edit' do
  erb :'comedians/edit'
end

get '/comedians/:id/requests' do
  erb :'comedians/requests'
end

get '/venues/:id' do
  @venue = Venue.find(params[:id])
  @events = Event.where(venue_id: @venue.id)
  erb :'venues/show'
end

get '/venues/:id/requests' do
  erb :'venues/requests'
end

get '/venues/:id/requests/:id' do
  erb :'venues/requests/show'
end

get '/events/index' do
  @events = Event.all
  erb :'events/index'
end

get '/events/:id' do
  @event = Event.find(params[:id])
  erb :'events/show'
end










