class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  get '/' do
    erb :index
  end

  get '/recipes' do
    erb :index
  end

  get '/recipes/new' do
    erb :new
  end

  post '/recipes/' do
    @recipe = Recipe.create(params)
    redirect '/recipe/#{@recipe.id}'
  end

  get '/recipe/:id' do
    erb :show
  end

end
