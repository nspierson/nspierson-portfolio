Rails.application.routes.draw do
  root to: 'pages#home'
  resources :messages, only: [:new, :create]
end
