Rails.application.routes.draw do
<<<<<<< HEAD
=======
  get 'welcome/index'

  resources :parte_serviciocomplementarios
  resources :paciente_serviciocomplementarios
  resources :specialities
  resources :carga_reporte_laboratorios
  resources :carga_laboratorios
>>>>>>> cd53116cc2c59d6a42751a1b3880d19c1f57c6ac

  scope '/(:locale)', defaults: { locale: 'es' }, constraints: { locale: /en|es/ } do
    resources :parte_serviciocomplementarios
    resources :paciente_serviciocomplementarios
    resources :specialities
    resources :carga_reporte_laboratorios
    resources :carga_laboratorios

    root 'static_pages#home'

    resources :parte_diarios do
      resources :paciente_reportes
      resources :pacientes
    end

    resources :parte_dentals do
      resources :paciente_reporte_dentals
      resources :pacientes
    end

    resources :parte_laboratorios do
      resources :paciente_reporte_laboratorios
      resources :pacientes
      resources :specialities
      resources :areas
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

    resources :paciente_reporte_laboratorios


    resources :carga_dentals do
      resources :carga_reporte_dentals
      resources :users
    end

      resources :carga_emergencia do
      resources :carga_reporte_emergencia
      resources :users
    end


    resources :carga_reporte_dentals


    resources :carga_reporte_emergencia


    resources :carga_reporte_fisioterapia
    resources :carga_fisioterapia do
      resources :carga_reporte_fisioterapia
      resources :users
    end

    resources :carga_reportes

    resources :carga_parte_diarios do
      resources :carga_reportes
      resources :users
    end


    resources :carga_laboratorio do
      resources :carga_reporte_laboratorios
      resources :specialities
    end


    get '/carga_parte_diarios/:id/grafica_reporte' => 'carga_parte_diarios#grafica_reporte'
    get '/carga_parte_diarios/:id/grafica_fuerzas' => 'carga_parte_diarios#grafica_fuerzas'
    get '/carga_laboratorios/:id/grafica_examen' => 'carga_laboratorios#grafica_examen'
    get '/carga_parte_diarios/:id/print' => 'carga_parte_diarios#print'
    get '/carga_dentals/:id/print' => 'carga_dentals#print'

    get '/carga_emergencia/:id/print' => 'carga_emergencia#print'
    get '/carga_fisioterapia/:id/print' => 'carga_fisioterapia#print'
    get '/carga_laboratorios/:id/print' => 'carga_laboratorios#print'


    get '/mostrar_informe/:id' => 'parte_diarios#mostrar'
    devise_for :users, :path_prefix => 'my'
    resources :users

    post 'create_user' => 'users#create', as: :create_user

    resources :areas
    resources :pacientes
  end

<<<<<<< HEAD
=======

  get '/carga_parte_diarios/:id/grafica_reporte' => 'carga_parte_diarios#grafica_reporte'
  get '/carga_parte_diarios/:id/grafica_fuerzas' => 'carga_parte_diarios#grafica_fuerzas'
  get '/carga_laboratorios/:id/grafica_examen' => 'carga_laboratorios#grafica_examen'
  get '/carga_parte_diarios/:id/print' => 'carga_parte_diarios#print'
  get '/carga_dentals/:id/print' => 'carga_dentals#print'

  get '/carga_emergencia/:id/print' => 'carga_emergencia#print'
  get '/carga_fisioterapia/:id/print' => 'carga_fisioterapia#print'
  get '/carga_laboratorios/:id/print' => 'carga_laboratorios#print'


  get '/mostrar_informe_diario/:id' => 'parte_diarios#mostrar'
  get '/mostrar_informe_dental/:id' => 'parte_dentals#mostrar_informe'
  get '/mostrar_informe_emergencia/:id' => 'parte_emergencia#mostrar_emergencia'
  get '/mostrar_informe/:id' => 'parte_fisioterapia#mostrar'
  get '/mostrar_informe_rayos_x/:id' => 'parte_rayos_xes#mostrar_rayos_x'
  get '/mostrar_informe_laboratorio/:id' => 'parte_laboratorios#mostrar_laboratorio'
 

  get '/mostrar_reporte_diario/:id' => 'carga_parte_diarios#mostrar'
  get '/mostrar_reporte_dental/:id' => 'carga_dentals#mostrar_dental'
  get '/mostrar_reporte_emergencia/:id' => 'carga_emergencia#mostrar_emergencia'
  get '/mostrar_reporte_fisioterapia/:id' => 'carga_fisioterapia#mostrar_fisioterapia'
>>>>>>> cd53116cc2c59d6a42751a1b3880d19c1f57c6ac
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
  # resources :paciente_reportes
  # resources :parte_diarios

end
