Rails.application.routes.draw do
  get 'comics/index'

  get 'comics/show'

  get 'comics/serie'

  get 'comics/event'

  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "people#index"
end
