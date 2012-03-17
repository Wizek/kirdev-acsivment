Acsivment::Application.routes.draw do
  root :to => "home#index"

  resources :achievements

  
  get '/profile/:id' => "users#show", :as => "profile"
  
  get '/signup' => "users#new", :as => "signup"
  post '/signup' => "users#create"
  get '/login' => "sessions#new", :as => "login"
  post '/login' => "sessions#create"
  get '/logout' => "sessions#logout", :as => "logout"
  
  

end
