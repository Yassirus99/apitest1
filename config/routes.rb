Rails.application.routes.draw do
  resources :ciclomaestria
  mount Rswag::Api::Engine => '/api-docs'
  mount Rswag::Ui::Engine => '/api-docs'
  # Tipousuario
  resources :tipousuarios, only: [:index, :show]
  # Empleado
  resources :empleados, only: [:index, :show, :create, :update, :destroy]
  # Autenticacion
  post '/authenticate', to: 'authentication#authenticate'
  # Usuario
  resources :usuarios, only: [:index, :show, :create, :update, :destroy]
  # Rol
  resources :roles, only: [:index, :show, :create, :update, :destroy]
  # Tipo recurso
  resources :tiporecursos, only: [:index, :show]
  # Recurso
  resources :recursos, only: [:index, :show, :create, :update, :destroy]
  #Maestria
  resources :maestria, only: [:index, :show, :create, :update, :destroy]
  #Ciclomaestria
  resources :ciclomaestria, only: [:index, :show, :create, :update, :destroy]

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




end



# namespace 'api' do
  #  namespace 'v1' do
   #   resources :bdusers

    #end
  #end
