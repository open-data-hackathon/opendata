Rails.application.routes.draw do
  resources :events
  root "statics#welcome"
  get 'sample', to: 'statics#sample_css'
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  resources :users, except: :index

  resources :events do
    resource :favorites, only: %i[create destroy]
    resource :preview, only: :show
    resources :comments, only: %i[create destroy], shallow: true
  end
  resource :profile, only: %i[show edit update]
  resources :password_resets, only: %i[new create edit update] 
end
