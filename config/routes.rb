Rails.application.routes.draw do
  resources :authors, :books
  get 'custom/path', to: 'authors#index'
end
