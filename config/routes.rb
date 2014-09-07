Rails.application.routes.draw do
  resources :foods

  root to: 'foods#index'. via: [:get], :as => 'foods'


end
