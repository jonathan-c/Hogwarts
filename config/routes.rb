Hogwarts::Application.routes.draw do
  root to: 'welcome#index'
  get 'students/enter_number'
  post '/assign_student_to_house', to: 'students#assign_student_to_house'

  resources :houses, only: [:index, :show] 
  resources :students, only: [:index, :new, :create, :show]

end