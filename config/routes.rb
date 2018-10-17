Rails.application.routes.draw do
  root to: "controller#action"
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
end
