require './config/environment'
require './app/models/model'
require 'giphy'
require 'json'
class ApplicationController < Sinatra::Base

# this helps connect our public and views directories
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do 
    erb :index
  end

  # post '/results' do
  #   @searchkeyword = Searchkeyword.new(params[:searchkeyword])
  #   erb :results
  # end
  post '/results' do
    @searchkeyword = Giphy.random(params[:searchkeyword])

    erb :results
  end
end
