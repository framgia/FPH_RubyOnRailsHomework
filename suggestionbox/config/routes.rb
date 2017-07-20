Rails.application.routes.draw do
  root 'topics#index'

  get '/topics', to: 'topics#index'
  
  get '/topics/new', to: 'topics#new', as: 'new_topic'
  post '/topics',  to: 'topics#create'

  get '/topics/show'
  get '/topics/edit'
end
