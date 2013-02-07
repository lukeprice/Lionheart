Lionheart::Application.routes.draw do
  root :to => 'pages#home'
  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post
  match '/about' => 'pages#about'
  match '/tour' => 'pages#tour'
end
