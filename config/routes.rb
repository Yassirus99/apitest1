Rails.application.routes.draw do
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
  
end



# namespace 'api' do
  #  namespace 'v1' do
   #   resources :bdusers

    #end
  #end
