class Api::RecipesController < ApplicationController
  def index
    # p "*" * 50
    # p current_user
    # p "*" * 50
    # show ALL of the recipes
    # get ALL the recipes from the db
    # if params[:search]
    #   @recipes = Recipe.where("chef LIKE ?", "%#{params[:search]}%")
    # else
    #   @recipes = Recipe.all
    # end

    # @recipes = @recipes.order(:id => :asc)
    # p "i am the current_user"
    # p current_user.name

    # if current_user
    @recipes = Recipe.all
    # else
    #   @recipes = []
    # end

    p "this is working"
    # show them to the user
    render 'index.json.jb'
  end

  def show
    # show one particular recipe
    # get one particular recipe from the db, based on the url, parameter
    the_id = params[:id]
    @recipe = Recipe.find_by(id: the_id)
    render 'show.json.jb'

  end

  def create
    # make a brand new recipe
    @recipe = Recipe.new(
      title: params[:title],
      ingredients: params[:ingredients],
      directions: params[:directions],
      prep_time: params[:prep_time],
      image_url: params[:image_url],
      user_id: current_user.id
    )
    @recipe.save
    render 'create.json.jb'
  end

  def update
    # find the item in the db (show)
    the_id = params[:id]
    @recipe = Recipe.find_by(id: the_id)
    # modify the item in the db (create)
    @recipe.ingredients = params[:ingredients]
    @recipe.directions = params[:directions]
    @recipe.prep_time = params[:prep_time]
    @recipe.title = params[:title]
    @recipe.image_url = params[:image_url]
    @recipe.save
    render 'update.json.jb'
  end

  def destroy
    # find the recipe
    the_id = params[:id]
    recipe = Recipe.find_by(id: the_id)
    # destroy the recipe
    recipe.destroy
    render 'destroy.json.jb'
  end
end
