Rails.application.routes.draw do
  root to: 'homes#index'
  resources :homes, only: [:new]

  # root to: 'products#index'
  resources :signup do
    collection do
      get 'index'
      get 'member'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
