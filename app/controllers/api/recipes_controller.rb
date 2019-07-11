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

    if current_user
      @recipes = Recipe.all
    else
      @recipes = []
    end
    # show them to the user
    render 'index.json.jb'
  end

  def show

    p "i am the current user"
    p current_user
    # show one particular recipe
    # get one particular recipe from the db, based on the url, parameter
    the_id = params[:id]
    @recipe = Recipe.find_by(id: the_id)
    render 'show.json.jb'
  end

  def create
    # make a brand new recipe
    @recipe = Recipe.new(
      title: params[:input_title],
      ingredients: params[:input_ingredients],
      directions: params[:input_directions],
      prep_time: params[:input_prep_time],
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
    @recipe.chef = params[:input_chef]
    @recipe.ingredients = params[:input_ingredients]
    @recipe.directions = params[:input_directions]
    @recipe.prep_time = params[:input_prep_time]
    @recipe.title = params[:input_title]
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
