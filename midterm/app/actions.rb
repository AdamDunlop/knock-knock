# Homepage (Root path)
helpers do
  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
end

get '/' do
  @comedians = Comedian.all
  @events = Event.all
  # binding.pry
  @events_sorted_by_date = Event.order(date: :asc).where('date > ?', Date.today).first(3)
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
  @events = @events.paginate(:page => params[:page], :per_page => 5)
  erb :'events/index'
end

get '/events/:id' do
  @event = Event.find(params[:id])
  erb :'events/show'
end

post '/comedians' do
  @comedian = Comedian.create(first_name: params[:first_name], last_name: params[:last_name], description: params[:description], password: params[:password], email: params[:email], picture_url: params[:picture_url])
  redirect '/'
end

delete '/events/:id' do
  @event = Event.find(params[:id])
  @event.destroy
  @event.save
  redirect '/events/index'
end

get '/search' do
  @search = params[:search]
  @event = Event.where('name like ?', "%#{@search}%")
  @venue = Venue.where('name like ?', "%#{@search}%")
  @comedian = Comedian.where('first_name like ? OR last_name like ? OR (first_name like ? AND last_name like ?)',"%#{@search}%","%#{@search}%","%#{@search}%","%#{@search}%")
  if @event.any?
    @result = @event.first
    redirect "/events/#{@result.id}"
  elsif @comedian.any?
    @result = @comedian.first
    redirect "/comedians/#{@result.id}"
  elsif @venue.any?
    @result = @venue.first
    redirect "/venues/#{@result.id}"
  else
    redirect '/events/index'
  end
 
  erb :'search'
end

get '/map' do
  erb :'map/index'
end

post '/login' do
  email = params[:email]
  password = params[:password]

  user = User.find_by(email: email)
  if user.password == password
    session[:user_id] = user.id
    redirect '/events/index'
  end
end

post '/users/new' do
  email = params[:email]
  password = params[:password]

  user = User.find_by(email: email)

  if user
    redirect '/login'
  else
    user = User.create(email: email, password: password)
    session[:user_id] = user.id
    session[:notice] = "Account successfully created"
    redirect '/events/index'
  end
end
