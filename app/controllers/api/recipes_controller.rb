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
end
