Hogwarts::Application.routes.draw do
  root to: 'welcome#index'

  resources :students, only: [:index, :new, :create, :show]
  resources :houses, only: [:index, :show]
end