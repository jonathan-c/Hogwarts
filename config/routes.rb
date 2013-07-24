Hogwarts::Application.routes.draw do
  root to: 'welcome#index'

  resources :houses, only: [:index, :show] do
    resources :students, only: [:index, :new, :create, :show]
  end
end