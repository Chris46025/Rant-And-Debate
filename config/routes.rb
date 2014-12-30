Rails.application.routes.draw do

  root:to => 'rants#index'

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

  get 'tags/:tag', to: 'rants#index', as: :tag

  resources :rants do
 	resources :comments
  end
end
