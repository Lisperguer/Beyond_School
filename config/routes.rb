Rails.application.routes.draw do
  get 'sections/show'
  get 'courses/index'
  get 'courses/show'
  devise_for :users
  root to: 'pages#home'


  resources :courses, only: [:index, :show, :my_course] 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :sections, only: [:show]
  resources :quizzes

end
