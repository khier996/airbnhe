Rails.application.routes.draw do

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }


  get('/about', {to: "pages#about"})


  root to: 'pages#home'

  resources :users, only:[:show]
  resources :men




  mount Attachinary::Engine => "/attachinary"





  get('/dashboard', {to: 'pages#dashboard'})
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
