require 'sinatra/base'
require_relative './models/link'

class MyApp < Sinatra::Base
  # get '/' do
  #   'Hello MyApp!'
  # end

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
