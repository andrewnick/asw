Rails.application.routes.draw do
  resources :families
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :users

  devise_scope :user do
    get "/login" => "devise/sessions#new"
  end


  root 'pages#home'

  get "rsvp" => "pages#rsvp"
  post "family_update" => "pages#family_update"
  get "gift-registry" => "pages#registry"
  get "directions" => "pages#directions"

end
