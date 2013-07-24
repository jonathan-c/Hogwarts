Hogwarts::Application.routes.draw do
  root to: 'welcome#index'

  resources :students, only: [:index, :new, :create]
  resources :houses, only: [:index, :show]
end