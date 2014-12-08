Rails.application.routes.draw do
  root "timeline#show"

  resource :timeline, only: [:show], controller: 'timeline'
  resource :session, only: [:new, :create, :destroy]
  resources :friends
end
