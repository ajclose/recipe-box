Rails.application.routes.draw do

  root 'recipes#index'

  resources :recipes do
    resources :steps
    resources :ingredients
  end
  
end
