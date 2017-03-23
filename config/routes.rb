Rails.application.routes.draw do

  get 'men/index'

  root to: 'pages#home'

  resources :men

  mount Attachinary::Engine => "/attachinary"

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  get('/dashboard', {to: 'pages#dashboard'})
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
