Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#index'
  resources :homes, only: [:new, :create, :show]

  root to: 'products#index'
  resources :signup do
    collection do
      get 'member'
      post 'phonenumber'
      post 'addressinformation'
      post 'completed'
    end
  end
  

  resources :users do
    collection do
      get 'login'
    end
  end
  

  resources :products do
    member do
      patch 'release'
      patch 'suspension'
    end
    collection do
      get 'category_child', defaults: { format: 'json' }
      get 'category_grandchild', defaults: { format: 'json' }
      get 'size', defaults: { format: 'json' }
      get 'brand', defaults: { format: 'json' }
      get 'delivery_way'
    end
  end

  resources :category do
    collection do
      get 'new', defaults: { format: 'json' }
    end
  end
  
  root 'products#index'
  resources :products, except: :show

  resources :mypage do
    collection do
      get 'credit'
      get 'logout'
    end
  end

  resources :products, only: [:index, :new, :create]
  resources :purchase, only: [:show]



  resources :images, only: [:index, :new, :create]



  

  resources :signup, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
