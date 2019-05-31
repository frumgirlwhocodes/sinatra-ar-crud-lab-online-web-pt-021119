
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
  end
  
  get '/articles/new'
 
  erb :new 
  end 
post "/articles" do
Article.create(params)
redirect "/articles/#{Article.last.id}"
end
end 
