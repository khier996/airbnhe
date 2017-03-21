Rails.application.routes.draw do
  get 'men/home'

  get 'men/show'

  get 'men/new'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
