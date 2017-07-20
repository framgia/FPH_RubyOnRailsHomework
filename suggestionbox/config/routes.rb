Rails.application.routes.draw do
  root 'topics#index'

  get 'topics/show'

  get 'topics/new'

  get 'topics/edit'
end
