Lionheart::Application.routes.draw do
  devise_for :admins

  resources :homes

  resources :banners

  resources :slides

  resources :news

  root :to => 'pages#home'
  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post
  match '/about' => 'pages#about'
  match '/tour' => 'pages#tour'
  
  as :admin do
    get "/admin" => "devise/sessions#new"
  end
end
