Rails.application.routes.draw do
  get 'men/index'

  devise_for :users
  root to: 'pages#home'
  resources :men
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
