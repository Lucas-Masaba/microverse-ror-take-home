Rails.application.routes.draw do
  resources :users, only: [:index, :show]
  root "users#index"

end
