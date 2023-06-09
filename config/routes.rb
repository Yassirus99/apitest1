  Rails.application.routes.draw do
  resources :ciclomaestria
  mount Rswag::Api::Engine => '/api-docs'
  mount Rswag::Ui::Engine => '/api-docs'
  # Tipousuario
  resources :tipousuarios, only: [:index, :show]
  # Empleado
  resources :empleados, only: [:index, :show, :create, :update, :destroy] do 
    collection do
      get 'empleados_sin_usuario'
    end
  end

  # Autenticacion
  post '/authenticate', to: 'authentication#authenticate'
  
  # Usuario
  resources :usuarios, only: [:index, :show, :create, :update, :destroy] do
    # member do
    #   patch 'cambiar_estado'
    # end

    # collection do
    #   get 'obtener_usuarios_tipo_rol'
    # end
  end

  # Rol
  resources :roles, only: [:index, :show, :create, :update, :destroy]
  # Tipo recurso
  resources :tiporecursos, only: [:index, :show]
  # Recurso
  resources :recursos, only: [:index, :show, :create, :update, :destroy] do
    collection do
      get 'activos'
    end
  end
  #Maestria
  resources :maestria, only: [:index, :show, :create, :update, :destroy]
  #Ciclomaestria
  resources :ciclomaestria, only: [:index, :show, :create, :update, :destroy]
  #actividad evaluada 
  resources :actividad_evaluadas, only: [:index, :show, :create, :update, :destroy]
  #aplicacion_oferta_aspirante
  resources :aplicacion_oferta_aspirantes, only: [:index, :show, :create, :update, :destroy]
  #area conocimiento
  resources :area_conocimientos, only: [:index, :show, :create, :update, :destroy]
  #asignatura
  resources :asignaturas, only: [:index, :show, :create, :update, :destroy]
  #aspirante requisito 
  resources :aspirante_requisitos, only: [:index, :show, :create, :update, :destroy]
  #bibliografia programa
  resources :bibliografia_programas, only: [:index, :show, :create, :update, :destroy]
  #cargo empleado
  resources :cargo_empleados, only: [:index, :show, :create, :update, :destroy]
  # CicloMaestria
  resources :ciclo_maestrias, only: [:index, :show, :create, :update, :destroy]
  #ciclos
  resources :ciclos, only: [:index, :show, :create, :update, :destroy]
  #cohorte estudiante
  resources :cohortes_estudiantes, only: [:index, :show, :create, :update, :destroy]
  # Cohorte
  resources :cohortes, only: [:index, :show, :create, :update, :destroy]
  # DatosPersona
  resources :datos_personas, only: [:index, :show, :create, :update, :destroy]
  #detalle contratacion
  resources :detalle_contratacion, only: [:index, :show, :create, :update, :destroy]
  



  #############################

  #EstadoprogramaasignaturasController
  resources :estadoprogramaasignaturas, only: [:index, :new, :create]
  #Expedienteacademico 
  resources :expedienteacademico, only: [:index, :show, :create, :update, :destroy]
  #Experiencialaboral
  resources :experiencia_laboral, only: [:index, :show, :create, :update, :destroy]
  #Fuentebibliografica
  resources :fuentebibliografica, only: [:index, :show, :create, :update, :destroy]
  #Gradoacademico 
  resources :gradoacademico, only: [:index, :show, :create, :update, :destroy]
  #maestriaasignatura
  resources :maestriaasignatura, only: [:index, :show, :create, :update, :destroy]
  #metodologiaensenanza 
  resources :metodologiaensenanza, only: [:index, :show, :create, :update, :destroy]
  #modalidad
  resources :modalidad, only: [:index, :show, :create, :update, :destroy]
  #municipio
  resources :municipios, only: [:index, :show, :create, :update, :destroy]
  #observacionesprogramaasignatura
  resources :observacionesprogramaasignaturas, only: [:index, :show, :create, :update, :destroy]
  #observacion maestrias
  resources :observacionmaestrias, only: [:index, :show, :create, :update, :destroy]
  #observacion plan estudios
  resources :observacionplanestudios, only: [:index, :show, :create, :update, :destroy]
  #oferta contratacion 
  resources :ofertacontrataciones, only: [:index, :show, :create, :update, :destroy]
  #paises
  resources :paises, only: [:index, :show, :create, :update, :destroy]
  #perfiles aspirantes
  resources :perfilaspirantes, only: [:index, :show, :create, :update, :destroy]
  #permisos
  resources :permisos, only: [:index, :show, :create, :update, :destroy]
  #planes estudios  
  resources :planestudios, only: [:index, :show, :create, :update, :destroy]
  #profesores
  resources :profesores, only: [:index, :show, :create, :update, :destroy]
  #programa asignaturas
  resources :programaasignaturas, only: [:index, :show, :create, :update, :destroy]
  #programa metodologias
  resources :programametodologias, only: [:index, :show, :create, :update, :destroy]
  #requisitos 
  resources :requisitos, only: [:index, :show, :create, :update, :destroy]
  #requisito aspirante
  resources :requisito_aspirantes, only: [:index, :show, :create, :update, :destroy]
  #sistema evaluaciones
  resources :sistema_evaluaciones, only: [:index, :show, :create, :update, :destroy]
  #tipo documentacion profesores
  resources :tipo_documentacion_profesores, only: [:index, :show, :create, :update, :destroy]
  #tipo evaluaciones 
  resources :tipo_evaluaciones, only: [:index, :show, :create, :update, :destroy]
  #tipo profesor  
  resources :tipo_profesores, only: [:index, :show, :create, :update, :destroy]
  #estado observacion plan estudio
  resources :estadoobservacionplansstudio, only: [:index, :show, :create, :update, :destroy]


end

# namespace 'api' do
  #  namespace 'v1' do
   #   resources :bdusers

    #end
  #end
