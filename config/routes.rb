Rails.application.routes.draw do
  root to: "home#index"

  get "index", to: "home#index"

  devise_for :users, controllers: {
    registrations: "users/registrations",
    confirmations: "users/confirmations"
  }

  devise_scope :user do
    patch "users/confirmation", to: "users/confirmations#confirm"
  end
end
