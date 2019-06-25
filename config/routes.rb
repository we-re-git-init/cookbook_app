Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get '/recipe' => 'recipes#the_recipe'
  #   get "/photos" => "photos#index"
  end
end
