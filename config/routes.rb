Rails.application.routes.draw do
  get 'docs/index'

  get 'docs/show'

  get 'docs/new'

  get 'docs/create'

  get 'docs/update'

  get 'docs/destroy'

  get 'maps/index'

  get 'maps/new'

  get 'maps/create'

  get 'maps/update'

  get 'maps/onemore'

  get 'ajax/:action', to: 'ajax#:action', :defaults => { :format => 'json' }

  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
  resources :pics

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
