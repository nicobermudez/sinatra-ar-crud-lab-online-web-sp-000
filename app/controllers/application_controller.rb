
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end


  #Create
  get '/articles/new' do
    erb :new
  end

  post '/articles' do
    erb :index
  end

  #Read
  get '/articles' do
    @articles = Articles.all
  end

  get '/articles/:id' do
    @article = params[:id]
    erb :show
  end

  #Update

  get '/articles/:id/edit' do 
  end


end
