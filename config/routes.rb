TMGPostgresql::Application.routes.draw do

  root    'site#index'

  # resources :products
  # resources :lists
  # resources :reviews


  # general pages
  get     'privacy' => 'site#privacy'
  get     'terms'   => 'site#terms'

    # logging in and out
  get     'login'   => 'session#new'
  post    'login'   => 'session#create'
  delete  'logout'  => 'session#destroy'
  get     'logout'  => 'session#destroy' #TODO: remove before deployment

  # registering a new user
  get     'register'  =>  'register#new_user'
  post    'register'  =>  'register#register'

  # resetting the user's password
  get     'reset/:code' => 'password#edit', as: :reset
  put     'reset/:code' => 'password#update'
  patch   'reset/:code' => 'password#update'

  get     'gear'  =>  'gear#edit',    as: :gear_form
  patch   'gear'  =>  'gear#update',  as: :update_gear

  scope :api, except: [ :new, :edit ], defaults: { format: :json } do
    get '' => "api#index", as: :api

    resources :users
    resources :products
    resources :lists
    resources :reviews

  end

end
