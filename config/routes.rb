Rails.application.routes.draw do
  get 'home/index'

  root to: 'messages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
