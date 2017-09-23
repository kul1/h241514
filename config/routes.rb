Rails.application.routes.draw do
  post ':controller(/:action(/:id))(.:format)'
  get ':controller(/:action(/:id))(.:format)'
  get '/logout' => 'sessions#destroy', :as => 'logout'
  get '/auth/failure' => 'sessions#failure'
  post '/auth/:provider/callback' => 'sessions#create'
  get '/auth/:provider/callback' => 'sessions#create'

  resources :sessions
  resources :identities
  mount Ckeditor::Engine => '/ckeditor'
  root :to => 'mindapp#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
