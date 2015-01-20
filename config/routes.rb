Rails.application.routes.draw do
  resources :search_suggestions

  root :to => "foods#index"

  resources :foods
end
