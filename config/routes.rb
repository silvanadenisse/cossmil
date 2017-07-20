Rails.application.routes.draw do

  resources :parte_emergencia
  resources :parte_dentals
  root 'static_pages#home'
  resources :parte_diarios do
    resources :paciente_reportes
    resources :pacientes
  end
  
  devise_for :users


  resources :areas
  resources :parte_diarios
  resources :pacientes
  resources :paciente_reportes
end
