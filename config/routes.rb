Rails.application.routes.draw do
  
   devise_for :users, :controllers => { :registrations => "users", :sessions => "sessions" }

  devise_scope :user do
    root 'users#new'
    #get 'users/dashboard', to: 'users#new'
   # get 'users/dashboard', to: 'users#dashboard'
    #get 'login', to: 'users#dashboard'

     get '/login', to: 'users#dashboard', :as => :users_dashboard
     #get '/login', to: 'users#dashboard', :as => :new_user_session
    # get '/signup', to: 'users#new', :as => :new_user_registration


   # get 'devise/sessions/new', to: 'users/sessions#create', as: 'session'
     #get '/login', to: 'sessions#new', :as => :new_user_session
     #get '/login', to: 'devise/sessions#new'

   #get "signup", to: "users#new"
   #get "login", to: "devise/sessions#new"
   #get "logout", to: "devise/sessions#destroy"
     #get '/editpro', to: 'users#new'
     get '/editpro', to: 'users#editprofile'

end

 resources :items
  resources :users
  resources :profilepics

get '/product/', to: 'items#itempage', :as => :itempage
get '/profile/', to: 'profilepics#show'

#get '/edit/', to: 'users#edit'

#get '/profile', to: 'users#profilepic', :as => :profilepic

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
