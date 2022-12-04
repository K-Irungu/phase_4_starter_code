Rails.application.routes.draw do
resources :developers, only: [:index, :show]
resources :managers, only: [:index, :show]
end
