Rails.application.routes.draw do
  devise_for :users

  resources :parte_diarios
  #get 'welcome/index'

  root 'static_pages#home'
  resources :medicos
  resources :areas
  resources :pacientes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
