Rails.application.routes.draw do

 
  root 'static_pages#home'
  
  resources :parte_diarios do
    resources :paciente_reportes
    resources :pacientes
  end

  resources :parte_dentals do
    resources :paciente_reporte_dentals
    resources :pacientes
  end

  resources :parte_emergencia do
    resources :paciente_reporte_emergencia
    resources :pacientes
  end

  resources :parte_rayos_xes do
    resources :paciente_reporte_rayos_xes
    resources :pacientes
  end

  resources :parte_fisioterapia do
    resources :paciente_reporte_fisioterapia
    resources :pacientes
  end
  resources :paciente_reporte_rayos_xes 

  resources :paciente_reporte_fisioterapia 
    
  resources :paciente_reporte_emergencia 

  resources :paciente_reporte_dentals 


  resources :carga_dentals do
    resources :carga_reporte_dentals
    resources :current_users
  end

  resources :carga_reporte_dentals 


  resources :carga_reporte_emergencia

  resources :carga_emergencia do
    resources :carga_reporte_emergencia
    resources :current_users
  end

  resources :carga_reporte_fisioterapia
  resources :carga_fisioterapia do
    resources :carga_reporte_fisioterapia
    resources :current_users
  end
  
  resources :carga_reportes
  resources :carga_parte_diarios
    resources :carga_reportes do
    resources :current_users
  end
  #get "reportes_dentales" => "parte_dentals#reporte"
  
  # resources :parte_laboratorios do
  #   resources :paciente_reportes
  #   resources :pacientes
  # end
  # resources :parte_fisioterapia do
  #   resources :paciente_reportes
  #   resources :pacientes
  # end

  # resources :parte_rayos_xes do
  #   resources :paciente_reportes
  #   resources :pacientes
  # end
  # resources :parte_emergencia do
  #   resources :paciente_reportes
  #   resources :pacientes
  # end
  # resources :parte_dentals do
  #   resources :paciente_reportes
  #   resources :pacientes
  # end

  
  
  devise_for :users


  resources :areas
  # resources :paciente_reportes
  # resources :parte_diarios
  resources :pacientes
end
