get '/' do
  if session[:user_id]
    @user = User.find(session[:user_id])
    erb :home, :layout => false
  else
    erb :home, :layout => false
  end
end

get '/signup' do
  @user = User.new
  erb :signup, :layout => false
end

post '/account/create' do
  @user = User.new(email: params[:email], username: params[:username], password_hash: params[:password])
  if @user.save
    session[:user_id] = @user.id
    redirect '/'
  else
    erb :signup, :layout => false
  end
end

post '/session/new' do
  @user = User.find_by(email: params[:email], password_hash: params[:password_hash])
    if @user
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
  erb :alt_log_in
end

post '/search_results' do
  erb :search_results
end

get '/trail_info/:trail_page' do
  erb :trail_info
end




