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
  erb :alt_log_in
end

# get '/search_results' do
#   @trail_search = params[:searched_input]
#   redirect '/search_results/#{@trail_search}'
# end

# get '/search_results/:trail' do
#   erb :search_results
# end

get '/trail_info/:trail_page' do
  erb :trail_info
end

post '/search_results' do
  @results = params[:search_results]
  api= GoTrek::Client.new(ENV['TRAIL_API_KEY'], 'Awesome-Stuff')
  @server_response = api.places(params[:search_results])
  redirect '/display_page/#{server_response}'

  # parse your params to find the value of what was in the form, set that equal to a var
  # using something like HTTParty or `curl', hit the API endpoint and pass in the search term (whatevers in your var)
  # manually create some of key val pair
  # params[:places] = LOOK AT THE DOCUMENTATION
  # redirect '/some-page?firstkey=foo'
  # redirect "/some-page?places=#{variable containing params}"
  # redirect to a new page and pass all your information as params
end

get '/search_results/:trail' do
  # @places = params[]
  erb :search_results
end


# <% @places.each do |place| %>
#   <% end %>




