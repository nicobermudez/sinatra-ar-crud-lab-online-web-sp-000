
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    redirect to "/articles"
  end

  get '/articles' do
    @articles = Article.all
    erb :index
  end

  #CREATE
  get '/articles/new' do
    @article = Article.new
    erb :new
  end

  post '/articles' do
    @article = Article.create(params)
    redirect to "/articles/#{ @article.id }"
  end

  #READ

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
