Rails.application.routes.draw do
  
  get 'signups/new'

  get 'signups/create'

  resources :signups, only: :create do
    resources :participants, only: :create
  end

  root 'signups#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
