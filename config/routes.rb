Rails.application.routes.draw do
  root to: 'homes#index'
  resources :homes, only: [:new, :create]

  # root to: 'products#index'
  resources :signup do
    collection do
      get 'index'
      get 'member'
    end
  end
  
  root 'products#index'
  resources :products, except: :show


  resources :images, only: [:index, :new, :create]



  

  resources :signup, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
