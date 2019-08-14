require 'rails_helper'

RSpec.describe "Recipes", type: :request do
  describe "GET /recipes" do
    it 'returns an array of recipes' do
      # test DB
      # make some recipes
      # i also need to make a user
      user = User.create(name: "bob", email: "bob@bob.com", password: "password")
      recipe = Recipe.create(
        title: "sanwich",
        ingredients: "lettuce, tomato, bacon",
        directions: "BLT",
        prep_time: 2,
        image_url: "don't care",
        user_id: user.id
      )

      recipe = Recipe.create(
        title: "eggs",
        ingredients: "...",
        directions: "make the egg",
        prep_time: 12,
        image_url: "still don't care",
        user_id: user.id
      )

      # response = HTTP.get("localhost:3000/api/recipes")

      get "/api/recipes"

      recipes = JSON.parse(response.body)

      expect(response).to have_http_status(200)
      expect(recipes.length).to eq(2)
      # make a request to the index action of recipes and make sure the recipes are in the response
    end
  end
end
