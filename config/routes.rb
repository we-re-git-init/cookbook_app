Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    # index action
    get '/recipes' => 'recipes#index'
    # show action
    get '/recipes/:id' => 'recipes#show'
    # create action
    post '/recipes' => 'recipes#create'
    # update action
    patch '/recipes/:id' => 'recipes#update'
    # destroy action
    delete '/recipes/:id' => 'recipes#destroy'

    # signup
    post "/users" => "users#create"

    # generate a token
    post "/sessions" => "sessions#create"


  end

  # fullstack
  # get '/recipes' => 'recipes#index'
  # get '/recipes/new' => 'recipes#new'
  # get '/recipes/:id' => 'recipes#show'
  # post '/recipes' => 'recipes#create'
  # get '/recipes/:id/edit' => 'recipes#edit'
  # patch '/recipes/:id' => 'recipes#update'
  # delete '/recipes/:id' => 'recipes#destroy'
end
