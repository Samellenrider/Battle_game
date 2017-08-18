#This is the backend
#I am the server in this file
require  'sinatra' #require sinatra equals the whole sinnatra code. we run sinatra before we run our other code

class Battle < Sinatra::Base #require class Base in Sinatra because we want to work with that

  enable :sessions #hash gets initialized

  get '/' do #if we get the get request with / we do this code
	  "Testing infrastructure working!"
    erb(:index) #we call index file / erb interprets html(index file syntax)(language)
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name] #|| "human_1"
    session[:player_2_name] = params[:player_2_name] #|| "human_2"
    redirect to '/play' #post redirect loop
  #erb :play#, :locals => {"player_1_name" => player_1_name, "player_2_name" => player_2_name} #different variable for the same value are called the same.
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :play
  end





  run! if app_file == $0
end




#get request = we are the server. we get a get request and are asked to diplay code matching the get request.
#post request = we are asked to take the values that were posted, send them to the backend, and work on them.
