Rails.application.routes.draw do

  resources :fights, only: [:index, :show] do
    collection do
      post 'destroy_all'
    end
  end

  resources :series, only: [:index, :show]

  resources :events, only: [:index, :show]

  resources :characters, only: [:index, :show] do
    member do
      get "comics"
      get "events"
      get "series"
    end
  end

  resources :comics, only: [:index, :show]

  resources :people do
    member do
      post 'revive'
      post 'fight'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "people#index"
end
