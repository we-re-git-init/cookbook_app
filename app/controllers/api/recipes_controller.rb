class Api::RecipesController < ApplicationController
  def index
    # show ALL of the recipes
    # get ALL the recipes from the db
    @recipes = Recipe.all
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
      chef: params[:input_chef],
      title: params[:input_title],
      ingredients: params[:input_ingredients],
      directions: params[:input_directions],
      prep_time: params[:input_prep_time]
    )
    @recipe.save
    render 'create.json.jb'
  end

  def update
    # find the item in the db (show)
    the_id = params[:id]
    @recipe = Recipe.find_by(id: the_id)
    # modify the item in the db (create)
    @recipe.chef = params[:input_chef]
    @recipe.ingredients = params[:input_ingredients]
    @recipe.directions = params[:input_directions]
    @recipe.prep_time = params[:input_prep_time]
    @recipe.title = params[:input_title]
    @recipe.save
    render 'update.json.jb'
  end
end
