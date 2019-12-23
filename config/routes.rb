# Rails.application.routes.draw do
  # resources :images
#   devise_for :users
#   root to: "home#index"
# end

Rails.application.routes.draw do
  resources :images
  devise_for :users, controllers: { registrations: 'users/registrations',
    sessions: 'users/sessions', 
    unlocks: 'users/unlocks',
    passwords: 'users/passwords', 
    confirmations: 'users/confirmations'}
    
      root to: "home#homepage"

end

