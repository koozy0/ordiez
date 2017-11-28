Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # setting root
  root 'welcome#index'

  resources :orders, only: [:index, :show] do
    resources :feedback, only: [:index, :create, :new]
  end
end
