get '/' do
  'Hello'
end

get '/signup' do
  # @user = User.new
  erb :signup
end

post '/account/create' do
  # @user = User.new(params[:account])
  # if @user.save
  #   #Redirect to their home site
  # else
  #   erb :signup
  # end
end
