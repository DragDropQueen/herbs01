require 'sinatra/base'

class HerbsApp < Sinatra::Base
  get '/' do
    herb_table = DB[:herbs]
    erb :index, :locals => {:herb_friends => herb_table.to_a}
  end

  post '/' do
    herb_table = DB[:herbs]
    herb_table.insert(name: params[:herb], part: params[:part])
    redirect '/ '
  end

end