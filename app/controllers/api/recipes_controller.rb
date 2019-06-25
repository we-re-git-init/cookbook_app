class Api::RecipesController < ApplicationController
  def the_recipe
    @recipe = Recipe.first
    render 'reci.json.jb'
  end
end
