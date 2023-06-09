class RolesController < ApplicationController
    def index
      @roles = Rol.all
      
      attributes = Rol.attribute_names
      params.each do |key, value|
        if attributes.include? key
          @usuarios = @usuarios.where(key => value) unless value.blank?
        elsif key == "search"
          value.split(" ").each do |word|
            @usuarios = @usuarios.where("NOMBRE_USUARIO LIKE ?", "%#{word}%")
            @usuarios = @usuarios.or(Usuario.where("CORREO_ELECTRONICO_USUARIO LIKE ?", "%#{word}%"))
          end
        end
      end
      
      render json: @roles, status: :ok
      
    end
  
    def show
      @rol = Rol.find_by(ID_ROL: params[:id])
  
      # validación de existencia de rol
      if @rol.nil?
        render json: { error: "Rol no encontrado" }, status: :not_found
        return
      end
  
      render json: @rol, status: :ok
    end
  
    def create
        rol_params = params
          .require(:rol)
          .permit(
            :ID_ROL,
            :ID_F_USUARIO,
            :ID_F_USUARIO_ROL,
            :ACTIVO_ROL,
            :FECHA_CREACION,
            :FECHA_MODIFICACION
          )
      
        @rol = Rol.new(rol_params)
        if @rol.save
          render json: @rol, status: :created
        else
          render json: {
            errors: @rol.errors,
            message: "El rol no pudo ser creado"
          }, status: :unprocessable_entity
        end
      end
      
  
    def update
      rol_params = params
        .require(:rol)
        .permit(
            :ID_ROL,
            :ID_F_USUARIO,
            :ID_F_USUARIO_ROL,
            :ACTIVO_ROL,
            :FECHA_CREACION,
            :FECHA_MODIFICACION
         
        #  :FECHA_CREACION,
         # :FECHA_MODIFICACION
        )
  
      @rol = Rol.find_by(ID_ROL: params[:id])
  
      # validación de existencia de rol
      if @rol.nil?
        render json: { error: "Rol no encontrado" }, status: :not_found
        return
      end
  
      if @rol.update(rol_params)
        render json: @rol, status: :ok
      else
        render json: {
          errors: @rol.errors,
          message: "El rol no pudo ser actualizado"
        }, status: :unprocessable_entity
      end
    end
  
    def destroy
      @rol = Rol.find_by(ID_ROL: params[:id])
  
      # validación de existencia de rol
      if @rol.nil?
        render json: { error: "Rol no encontrado" }, status: :not_found
        return
      end
  
      @rol.destroy
      render json: { message: "El rol fue eliminado" }, status: :ok
    end
  end
  