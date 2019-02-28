
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
    @article = Article.new
    erb :new
  end

  post '/articles' do
    @article = Article.create(params)
    erb :index
  end

  #READ
  get '/articles' do
    @articles = Article.all
    erb :index
  end

  get '/articles/:id' do
    @article = Article.createparams[:id]
    erb :show
  end

  #UPDATE
  get '/articles/:id/edit' do
    erb :edit
  end

  post / patch '/articles/:id' do
  end

  #DELETE



end
