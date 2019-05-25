Rails.application.routes.default_url_options[:host] = "XXX"
Rails.application.routes.draw do
  root 'themes#index'
  get 'themes/index'
  get 'pages/about'
  get 'guestlists_imports/new'
  get 'guestlists_imports/create'
  resources :guestlists do
  collection do
    post :import
  end
end
  #resources :guestlists_imports, only: [:new, :create]
  resources :locations


  #root to: 'events#index'
  root to: redirect('/events')
  root to: redirect('/guestlists')
  root to: redirect('/pages/about')
  #get 'guestlists'
  resources :events
  devise_for :users

  mount ReportsKit::Engine, at: '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
