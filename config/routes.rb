Rails.application.routes.default_url_options[:host] = "XXX"

Rails.application.routes.draw do
  resources :payments
  resources :categories
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "landing_page#splash"
end
