Rails.application.routes.draw do
  get 'sections/show'
  get 'courses/index'
  get 'courses/show'
  devise_for :users
  root to: 'pages#home'
  resources :courses, only: [:index, :show] do
    resources :sections, only: [:show] do
      resources :quizzes, only: [:show]
    end
  end
  resources :quizzes do
    resources :quiz_details
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
