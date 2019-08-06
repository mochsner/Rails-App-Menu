Rails.application.routes.draw do
  get 'sessions/new'
  get 'home/index'
  get 'home/login'
  get 'layouts/footer'
  get 'layouts/header'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  ### TESTING
  root "home#index"
  
  ### SESSIONS
  get    '/login',   to: 'sessions#new'       # Page for logging in
  post   '/login',   to: 'sessions#create'    # Create a new session
  delete '/logout',  to: 'sessions#destroy'   # Delete a session (log out)
  resources :users
  resources :apps

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root "home#index"
  
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  get '
  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
  # resources :users
  # resources :applications

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
