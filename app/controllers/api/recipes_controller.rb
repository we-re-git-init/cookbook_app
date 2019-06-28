class Api::RecipesController < ApplicationController
  def index
    # show ALL of the recipes
    # get ALL the recipes from the db
    @recipes = Recipe.all
    # show them to the user
    render 'index.json.jb'
  end
end
