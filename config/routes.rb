Rails.application.routes.draw do
  get 'quiz_statuses/create'
  get 'sections/show'
  get 'courses/index'
  # get 'courses/show'
  get 'quiz_statuses/quizzquestions', to: "quiz_statuses#quizzquestions"
  devise_for :users
  root to: 'pages#home'
  get "/contacto", to: "pages#contacto"
  get "/nosotros", to: "pages#nosotros"

  resources :courses, only: [:index, :show, :my_course] do
    resources :reviews, only: [:new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :sections, only: [:show]
  resources :quizzes
  resources :quiz_statuses, only: [:create]
  resources :reviews, except: [:new, :create]
  resources :quiz_statuses, only: [:update]
end
