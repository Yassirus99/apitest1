class UsuariosController < ApplicationController
    # before_action :set_usuario, only: [:show, :destroy]
  
    def index
      @usuarios = Usuario.all
      render json: @usuarios, status: :ok
    end
  
    def show
      @usuario = Usuario.find_by(id_usuario: params[:id])

      # validacion de existencia de empleado
    if @usuario.nil?
      render json: {error: "Usuario no encontrado"}, status: :not_found
      return
    end
    
      render json: @usuario, status: :ok
    end
  
    def create
      @usuario = Usuario.new(usuario_params)
      if @usuario.save
        render json: @usuario, status: :created
      else
        render json: @usuario.errors, status: :unprocessable_entity
      end
    end
  
    def update
      @usuario = Usuario.find(params[:id])
      if @usuario.update(usuario_params)
        render json: @usuario, status: :ok
      else
        render json: @usuario.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @usuario = Usuario.find_by(ID_USUARIO: params[:id])

      # validacion de existencia de empleado
      if @usuario.nil?
        render json: {error: "Usuario no encontrado"}, status: :not_found
        return
      end

      @usuario.destroy

      head :no_content
    end
  
    private
  
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end
  
    def usuario_params
      params.require(:usuario).permit(:ID_USUARIO, :ID_EMPLEADO, :ID_F_TIPO_USUARIO, :ID_F_PROFESOR, :NOMBRE_USUARIO, :CORREO_ELECTRONICO_USUARIO, :DESCRIPCION_ROL, :CONTRASENIA, :ACTIVO_USUARIO, :FECHA_CREACION_USUARIO, :FECHA_MODIFICACION_USUARIO)
    end
  
    def validar_usuario
      @usuario = Usuario.find_by(CORREO_ELECTRONICO_USUARIO: params[:CORREO_ELECTRONICO_USUARIO])
      if @usuario.nil?
        render json: {error: "Usuario no encontrado"}, status: :not_found
      end
    end

end
