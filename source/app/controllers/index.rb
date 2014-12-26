get '/' do
  erb :layout
end

get '/signup' do
  @user = User.new
  erb :signup, :layout => false
end

post '/account/create' do
  @user = User.new(params[:account])
  if @user.save
    redirect '/account/:id'
  else
    erb :signup, :layout => false
  end
end
