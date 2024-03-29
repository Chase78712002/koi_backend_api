Rails.application.routes.draw do
  resources :teams
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  root "home#index"
  get "home", to: "home#index"

  if Rails.env.development?
    mount Lookbook::Engine, at: "/lookbook"
  end

end
