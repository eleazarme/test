Rails.application.routes.draw do
  namespace :admin do
    resources :dishes
  end
  namespace :admin do
    resources :orders
  end
  namespace :admin do
    resources :items
  end
  namespace :admin do
    resources :restaurants
  end
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
