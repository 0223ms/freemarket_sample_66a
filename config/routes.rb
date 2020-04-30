Rails.application.routes.draw do
  root to: 'homes#index'
  resources :homes, only: [:new, :create]

  root to: 'products#index'
  resources :signup do
    collection do
      get 'member'
      get 'phonenumber'
      get 'verification'
      get 'completed'
    end
  end
  
  resources :users do
    collection do
      get 'login'
    end
  end

  resources :products, only: [:index, :new, :create]


  resources :images, only: [:index, :new, :create]



  

  resources :signup, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
