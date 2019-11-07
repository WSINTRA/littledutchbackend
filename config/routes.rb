Rails.application.routes.draw do
  namespace :v1 do
    get 'admin_menu/sales'
    get 'admin_menu/orders'
    get 'admin_menu/customers'
    get 'admin_menu/employees'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    namespace :v1 do
	resources :users, only: [:create, :update, :show]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      patch '/update', to: 'users#update'
      resources :products, only: [:create, :update, :show]
      post '/new_product', to: 'products#create'
      get '/all_products', to: 'products#index'
      patch '/update_products', to: 'products#update'
    end

end
