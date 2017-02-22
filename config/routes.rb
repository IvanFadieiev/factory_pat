Rails.application.routes.draw do
  root 'main#index'
  post 'create', to: 'main#create'
  get 'load_user_partial', to: 'main#load_user_partial'
  get 'load_customer_partial', to: 'main#load_customer_partial'
end
