# Homepage (Root path)
helpers do
  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def current_comedian
    @current_comedian ||= Comedian.find_by(id: session[:comedian_id]) if session[:comedian_id]
  end

  def current_venue
    @current_venue ||= Venue.find_by(id: session[:venue_id]) if session[:venue_id]
  end

  def date_format(date)
    date.strftime("%e %B %Y <br> Time: %I:%M %p ")
  end

end


get '/' do
  @comedians = Comedian.all
  @events = Event.all
  @events_sorted_by_date = Event.order(date: :asc).where('date > ?', Date.today).first(3)
  erb :'index'
end

get '/login' do
  erb :'login'
end

get '/logout' do
  session.clear
  redirect '/'
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
  @requests = Request.where(venue_id: params[:id])
  @events = Event.all
  @venue = Venue.find(params[:id])
  erb :'venues/requests'
end

get '/venues/:id/requests/:id' do
  erb :'venues/requests/show'
end

get '/events/index' do
  @events = Event.all
  @events_sorted = Event.order(date: :asc).where('date > ?', Date.today)
  @events_sorted = @events_sorted.paginate(:page => params[:page], :per_page => 5)
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

delete '/venues/:id/requests' do
  @request = Request.find(params[:id])
  @request.destroy
  @request.save
  redirect '/'
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


post '/venue' do
  @venue = Venue.create(name: params[:name], location: params[:location], email: params[:email], password: params[:password], phone_number: params[:phone_number], picture_url: params[:picture_url])
  redirect '/'
end

post '/signup' do
  @user = User.create(email: params[:email], password: params[:password])
  redirect '/'
end

post '/login' do
  email = params[:email]
  password = params[:password]

  user = User.find_by(email: email)
  if user.nil? 
    flash[:message] = "Please enter a valid email address and password!"
    redirect '/'
  end
  
  if user.password == password
    session[:user_id] = user.id
    redirect '/events/index'
  elsif user.email != email || user.email == nil || user.password == nil
    redirect '/'
  end
end

post '/login/comedian' do
  com_email = params[:email]
  com_password = params[:password]

  comedian = Comedian.find_by(email: com_email)
  if comedian.nil? 
    flash[:message] = "Please enter a valid email address and password!"
    redirect '/'
  elsif comedian.password == com_password
    session[:comedian_id] = comedian.id
    redirect '/comedians/1'
  # binding.pry
  end
end

post '/login/venue' do
  ven_email = params[:email]
  ven_password = params[:password]

  venue = Venue.find_by(email: ven_email)
  if venue.nil?
    flash[:message] = "Please enter a valid email address and password!"
    redirect '/'
  elsif venue.password == ven_password
    session[:venue_id] = venue.id
    redirect '/venues/1'
  # binding.pry
  elsif venue.email != ven_email || venue.email == nil || venue.password == nil
    redirect '/'
  end
end


# post '/users/new' do
#   email = params[:email]
#   password = params[:password]

#   user = User.find_by(email: email)

#   if user
#     redirect '/login'
#   else
#     user = User.create(email: email, password: password)
#     session[:user_id] = user.id
#     session[:notice] = "Account successfully created"
#     redirect '/events/index'
#   end
# end



