Lionheart::Application.routes.draw do
  get "lampstand/content"

  get "lampstand/images"

  get "lampstand/banners"

  root :to => 'pages#home'
  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post
  match '/about' => 'pages#about'
  match '/tour' => 'pages#tour'
end
