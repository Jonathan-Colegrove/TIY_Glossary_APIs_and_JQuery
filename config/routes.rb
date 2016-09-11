Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'

  get 'suggestions/show_suggestion'

  get    '/auth/:provider'          => 'omniauth#auth',    as: :auth
  get    '/auth/:provider/callback' => 'session#create'
  get    '/auth/failure'            => 'session#failure'

  resources :categories
  resources :terms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
