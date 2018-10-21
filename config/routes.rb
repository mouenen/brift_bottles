# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

  resources :users
  resources :bottles do
    resources :comments, only: %i[show create update destroy]
  end
  root to: 'bottles#index'
end
