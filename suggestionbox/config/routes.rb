Rails.application.routes.draw do
  root 'topics#index'

  get 'topics/show'

  get 'topics/new'

  get 'topics/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
