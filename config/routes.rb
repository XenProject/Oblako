Rails.application.routes.draw do
  resources :projects, :todos

  root 'projects#index'
end
