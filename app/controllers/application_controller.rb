class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/recipes/new' do
    erb :new
  end

<<<<<<< HEAD
  post '/recipes' do
    # binding.pry
    recipe = Recipe.new(:name => params[:name], :ingredients => params[:ingredients], :cook_time => params[:cook_time])

    recipe.save

    redirect "/recipes/#{recipe.id}"
  end

  # post '/recipes' do
  #   # binding.pry
  #   @recipe = Recipe.new(:name => params[:name], :ingredients => params[:ingredients], :cook_time => params[:cook_time])
  #
  #   @recipe.save
  #
  #   redirect "/recipes/#{@recipe.id}"
  # end

=======
  post '/recipes/new' do
    # binding.pry
    @recipe = Recipe.new(:name => params[:name], :ingredients => params[:ingredients], :cook_time => params[:cook_time])
binding.pry
    @recipe.save

    redirect "/recipes/#{@recipe.id}"
  end

>>>>>>> 949d547e43215ab62ccf10c41a1885edc4e233aa
  get '/recipes' do
    @recipes = Recipe.all
    erb :index
  end

  get '/recipes/:id' do
<<<<<<< HEAD
    @recipe = Recipe.find_by_id(params[:id])
=======
    @recipe = Recipe.find_by(params[:id])
>>>>>>> 949d547e43215ab62ccf10c41a1885edc4e233aa

    erb :show
  end

  get '/recipes/:id/edit' do
<<<<<<< HEAD
    # binding.pry
=======
>>>>>>> 949d547e43215ab62ccf10c41a1885edc4e233aa
      @recipe = Recipe.find_by_id(params[:id])

      erb :edit
  end

<<<<<<< HEAD
  patch '/recipes/:id' do
    # binding.pry
    recipe = Recipe.find_by_id(params[:id])
    recipe.name = params[:name]
    recipe.ingredients = params[:ingredients]
    recipe.cook_time = params[:cook_time]
    article.save

    redirect "/recipes/#{recipe.id}"
  end

  delete '/recipes/:id' do
    # binding.pry
    recipe = Recipe.find_by_id(params[:id])
=======
  delete '/recipes/:id' do
    recipe = Article.find_by_id(params[:id])
>>>>>>> 949d547e43215ab62ccf10c41a1885edc4e233aa
    recipe.delete
    redirect '/recipes'
  end
end
