# Rails.application.routes.draw do
  # resources :profiles
  # resources :images
#   devise_for :users
#   root to: "home#index"
# end

Rails.application.routes.draw do
  
  devise_for :users, controllers: { 
    registrations: 'users/registrations',
    sessions: 'users/sessions', 
    unlocks: 'users/unlocks',
    passwords: 'users/passwords', 
    confirmations: 'users/confirmations'}
    # devise_for :users
    resources :images
    resources :profiles
    get "/profiles/:id/showprofile", to: "profiles#show_profile", as: "showprofile"
    root to: "home#homepage"

end

