require 'sinatra/base'
require './lib/messages'

class Chitter < Sinatra::Base

  get '/' do
    @messages = Messages.show
    erb :index
  end

  post '/' do
    p params
    Messages.add(params['content'])
    redirect '/'
  end
  
  run! if app_file == $0
end