Rails.application.routes.draw do

  get 'men/index'

  root to: 'pages#home'

  mount Attachinary::Engine => "/attachinary"

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :men
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
