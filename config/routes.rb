Hausaufgabe23::Application.routes.draw do
  resources :rutes

  resources :graphs
  
  match '/pages/app' , :to => 'pages#app'
  match '/graphs' , :to => 'graphs#index'
  match '/rutes' , :to => 'rutes#index'
  match '/rute' , :to => 'pages#rute'
  root :to => 'pages#home'
end
