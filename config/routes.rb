Rails.application.routes.draw do

  resources :series, only: [:index, :show]

  resources :events, only: [:index, :show]

  resources :characters, only: [:index, :show]

  resources :comics, only: [:index, :show]

  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "people#index"
end
