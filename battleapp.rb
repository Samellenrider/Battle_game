require  'sinatra'

class Battle < Sinatra::Base

  get '/' do
	"Testing infrastructure working!"
  erb(:index)
  end



end
