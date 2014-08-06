Rails.application.routes.draw do

  get 'api/aws'
  get 'api/return_a_graffiti'

  get 'comments/index'
  get 'comments/new'
  resources :activities
  root 'pages#index'
  resources :artist_graffitis
  get 'pages/home'
  get 'pages/about'
  get "/user/:id"   => "users#show",   as: :user
  get "/user/"      => redirect("/")
  resources :locations do
    #->Prelang (voting/acts_as_votable)
    member do
      get "vote"
    end
    resources :comments
  end

  resources :artists do
    #->Prelang (voting/acts_as_votable)
    member do
      get "vote"
    end
    resources :comments
  end


  resources :graffitis do
    #->Prelang (voting/acts_as_votable)
    member do
      get "vote"
    end
    resources :comments
  end

  resources :missions, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  resources :projects#, only: [:new, :create, :destroy]
  get '/missions', to: 'missions#index'
  get '/discover', to: 'pages#new_project'

  get '/missions/guidelines', to: 'pages#project_guidelines'
  get '/hello', to: 'pages#about'
  get '/help',  to: 'pages#help'
  get '/news',  to: 'pages#help'
  get '/top',   to: 'curated#top_display'


  resources :graffiti_pictures

  devise_for :users, controllers: {registrations: "users/registrations", sessions: "users/sessions", passwords: "users/passwords", omniauth_callbacks: "users/omniauth_callbacks"}, skip: [:sessions, :registrations]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
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

  #->Prelang (user_login:devise/stylized_paths)
  devise_scope :user do
    get    "login"   => "devise/sessions#new",         as: :new_user_session
    post   "login"   => "devise/sessions#create",      as: :user_session
    delete "signout" => "devise/sessions#destroy",     as: :destroy_user_session
    get    '/start'     => 'devise/registrations#new'

    get    "signup"  => "devise/registrations#new",    as: :new_user_registration
    post   "signup"  => "devise/registrations#create", as: :user_registration
    patch  "signup"  => "devise/registrations#update", as: :update_user_registration
    get    "account" => "devise/registrations#edit",   as: :edit_user_registration
  end

  # match "*missing" => redirect("/")

end
