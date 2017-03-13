Rails.application.routes.draw do
  
  resources :signups do
    resources :participants
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
