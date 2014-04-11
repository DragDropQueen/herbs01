require 'sinatra/base'

class HerbsApp < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    params[:herb]
  end

end