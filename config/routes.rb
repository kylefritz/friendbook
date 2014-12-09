Rails.application.routes.draw do
  root "timeline#show"

  resource :timeline, only: [:show], controller: 'timeline'
  resource :session, only: [:new, :create, :destroy]
  resources :friends
  resources :users do
    member do
      post 'add_as_friend'
    end
  end
end
