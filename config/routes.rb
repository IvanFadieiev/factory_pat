Rails.application.routes.draw do
  root 'main#index'
  post 'create', to: 'main#create'
end
