Rails.application.routes.draw do
  resources :parte_diarios
  devise_for :users

  #get 'welcome/index'

  root 'static_pages#home'
  resources :areas
  resources :pacientes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
