Rails.application.routes.draw do
  resources :arts do
    resources :uploads
  end

  root 'pages#index'

  get  'instagram/subscription' => 'instagram#subscription'
  post 'instagram/subscription' => 'instagram#create'


  get 'api/aws'
  get 'api/return_a_graffiti'

  get 'comments/index'
  get 'comments/new'
  resources :activities
  resources :artist_graffitis
  get 'example/map'       => "pages#mapExample"
  get 'example/timeline'  => "pages#timelineExample"
  get 'about'       => "pages#index"
  get 'pages/home'
  # get 'upload'      => "pages#upload"
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

  devise_scope :user do
    get    "login"   => "devise/sessions#new",         as: :new_user_session
    post   "login"   => "devise/sessions#create",      as: :user_session
    delete "signout" => "devise/sessions#destroy",     as: :destroy_user_session
    get    '/start'     => 'devise/registrations#new'

    # get    "signup"  => "devise/registrations#new",    as: :new_user_registration
    # post   "signup"  => "devise/registrations#create", as: :user_registration
    # patch  "signup"  => "devise/registrations#update", as: :update_user_registration
    get    "account" => "devise/registrations#edit",   as: :edit_user_registration
  end

  # match "*missing" => redirect("/")

end
