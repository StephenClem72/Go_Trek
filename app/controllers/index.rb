get '/' do
  if session[:user_id]
    @user = User.find(session[:user_id])
    erb :home
  else
    erb :home
  end
end

get '/signup' do
  @user = User.new
  erb :signup, :layout => false
end

post '/account/create' do
  @user = User.new(email: params[:email], username: params[:username], password: params[:password_hash])
  if @user.save
    session[:user_id] = @user.id
    redirect '/'
  else
    erb :signup, :layout => false
  end
end



post '/session/new' do
  @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password_hash])
      session[:user_id] = @user.id
      redirect '/'
    else
      redirect '/'
    end
end

delete '/session/:id' do
  session[:user_id] = nil
  redirect '/'
end

get '/login' do
  erb :log_in, :layout => false
end

get '/trail_info/:trail_page' do
  erb :trail_info
end


post '/search_results' do
  @searched_trails=trail_api(params[:searched_input])#['places']
  # @activity_type = @searched_trails['places'].first['activities'].first['activity_type']['name']
  # @trail_length = @searched_trails['places'].first['activities'].first['length']
  # @rating =
  # erb :search_results
end

get '/search_results/:trails_searched' do
  @search_output = params[:trails_searched]
  erb :search_results
end
