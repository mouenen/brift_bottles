Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'users/registrations' }
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

  resources :users
  resources :bottles do
    resources :comments, only: %i[show create update destroy]
  end
  root to: 'bottles#index'
end
