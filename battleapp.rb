require  'sinatra'

class Battle < Sinatra::Base
  get '/' do
	"The battle begins!"
  end
end