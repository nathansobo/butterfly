Butterfly::Application.routes.draw do
  resources :lists
  resources :items
  root :to => 'lists#index'
end
