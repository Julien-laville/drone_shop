Rails.application.routes.draw do






  get 'shop/builder'

  get 'admin/index'

  resources :builder do
    member do
      get 'new'
      get 'index'
      get 'edit'
      get 'show'
      post 'create'
      post 'update'
    end
    collection do
      get 'index'
    end
  end

  resources :product do
    member do
      get 'show'
      get 'new'
      get 'edit'
      post 'update'
      delete 'remove'
    end
    collection do
      get 'index'
    end
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'home#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
     resources :domain do
       member do
         get 'crawl'
         get 'show'
         get 'new'
         post 'create'
         post 'add_rule'
         post 'test_rule'
         delete 'remove_rule'
       end
       collection do
         get 'index'
       end
     end

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
