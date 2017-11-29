Rails.application.routes.draw do
  root 'welcome#index'

  resources :orders, only: [:index, :show] do
    resources :feedback, only: [:index, :create, :new]
  end
end
