Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    namespace :v1 do
    resources :orders, only: [:create, :update, :show]
    post 'orders/newOrder'
    get 'orders/allOrders'
	resources :users, only: [:create, :update, :show]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      patch '/update', to: 'users#update'
      resources :products, only: [:create, :update, :show]
      post '/new_product', to: 'products#create'
      get '/all_products', to: 'products#index'
      patch '/update_products', to: 'products#update'
      resources :review, only: [:create, :update, :show]
       post 'review/new'
       patch 'review/edit'
      delete 'review/delete'
      resources :admin_menu, only: [:show]
          get 'admin_menu/sales'
    get 'admin_menu/orders'
    get 'admin_menu/customers'
    get 'admin_menu/employees'
    end

end
