Rails.application.routes.draw do
  devise_for :users
  resources :users

  devise_scope :user do
    get "/login" => "devise/sessions#new"
  end

  root 'pages#home'

  get "rsvp" => "pages#rsvp"
  get "gift-registry" => "pages#registry"
  get "directions" => "pages#directions"

end
