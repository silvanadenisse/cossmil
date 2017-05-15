Rails.application.routes.draw do
  #get 'welcome/index'

  root 'welcome#index'
  resources :medicos
  resources :areas
  resources :pacientes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
