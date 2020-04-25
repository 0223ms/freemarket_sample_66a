Rails.application.routes.draw do
  root to: 'homes#index'
  resources :homes, only: [:new]

  resources :signup, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
