
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end


  #CREATE
  get '/articles/new' do
    erb :new
  end

  post '/articles' do
    erb :index
  end

  #READ
  get '/articles' do
    @articles = Articles.all
  end

  get '/articles/:id' do
    @article = params[:id]
    erb :show
  end

  #UPDATE

  get '/articles/:id/edit' do
    erb :edit
  end

  post


end
