Rails.application.routes.draw do
  # Roots
  root to: 'pages#home'

  # libraries
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  mount Attachinary::Engine => "/attachinary"

  #
  get('/about', {to: "pages#about"})
  get('/dashboard', {to: 'pages#dashboard'})

  #  resources
  resources :men do
    resources :bookings, only: [:create, :update, :delete]
  end
  resources :users, only:[:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
