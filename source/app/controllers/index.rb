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
  @user = User.new(params[:account])
  if @user.save
    session[:user_id] = @user.id
    redirect '/'
  else
    erb :signup, :layout => false
  end
end

post '/logging_in' do
  @user = User.find_by(params[:email], password: params[:password_hash])
    session[:user_id] = @user.id
    redirect '/'
  # end

end


