Rails.application.routes.draw do
  root 'pages#index'
  get '*unmatched_route', to: 'pages#index'
end
