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

  
end



# namespace 'api' do
  #  namespace 'v1' do
   #   resources :bdusers

    #end
  #end
