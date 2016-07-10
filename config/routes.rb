Rails.application.routes.draw do
  resources :gifts
  resources :families
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :users


  devise_for :users, :skip => [:sessions]
  as :user do
    get 'login' => 'devise/sessions#new', :as => :login
    delete 'logout' => 'devise/sessions#destroy', :as => :logout
  end

  root to: 'pages#home'

  get "rsvp" => "pages#rsvp"
  post "family_update" => "pages#family_update"
  post "add_to_registry" => "pages#add_to_registry"
  get "details" => "pages#details"
  get "tips-and-tricks" => "pages#tips_and_tricks"

end
