Smartpaths::Application.routes.draw do

  match '/rate' => 'rater#create', :as => 'rate'

  get "home/index"
  
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  root :to => "home#index"
  resources :users
  
  resources :sessions
  
  resources :password_resets

  resources :user_tags


  resources :user_programs

  resources :tags do
    member {post :vote}
  end


  resources :reviews


  resources :program_tags


  resources :programs


  resources :institutions

  get "programs" => "programs#index", :as => "my_programs"
  get "institutions" => "institutions#index", :as => "my_institutions"
  get "tags" => "tags#index", :as => "my_tags"
  match '/about', :to => 'home#about'
  match '/feedback', :to => 'home#feedback'
  match '/contact', :to => 'home#contact'

  get '/search' => "search#search", :as => "search"
  get "/results" => "programs#results", :as => "results"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
