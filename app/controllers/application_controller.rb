
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
  end
  
  get '/articles/new' do
    erb :new
   end

post '/articles' do
  article = Article.create
    article.title = params["title"]
    article.content = params["content"]
    article.save
    @articles=Article.all

    redirect("/articles/#{article.id}")
end

get '/articles' do
  @articles = Article.all
  erb :index
end
end 
