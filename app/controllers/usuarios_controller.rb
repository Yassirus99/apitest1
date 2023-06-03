class UsuariosController < ApplicationController
    # before_action :set_usuario, only: [:show, :destroy]
  
    def index
      @usuarios = Usuario.where("ACTIVO_USUARIO = ?", true)
      
      attributes = Usuario.attribute_names
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

 ##aqui agregare la funcion que se pidio para obtener los datos

 usuarios_data = []
    @usuarios.each do |usuario|
      id_usuario = usuario.ID_USUARIO
      nombre_usuario = usuario.NOMBRE_USUARIO
      id_f_empleado = usuario.ID_EMPLEADO
      nombre_empleado = usuario.empleado&.NOMBRE_EMPLEADO
      correo_electronico = usuario.CORREO_ELECTRONICO_USUARIO
      fecha_creacion = usuario.FECHA_CREACION_USUARIO
      usuario_activo = usuario.ACTIVO_USUARIO

      roles = []
      roles_usuario = Rol.where(ID_USUARIO: id_usuario, ACTIVO_ROL: true)
      roles_usuario.each do |rol|
        usuario_rol = Usuario.find_by(ID_USUARIO: rol.ID_ROL)
        roles << { id_usuario: usuario_rol.ID_USUARIO, nombre_usuario: usuario_rol.NOMBRE_USUARIO }
      end

      usuario_data = {
        id_usuario: id_usuario,
        nombre_usuario: nombre_usuario,
        id_f_empleado: id_f_empleado,
        nombre_empleado: nombre_empleado,
        correo_electronico: correo_electronico,
        fecha_creacion: fecha_creacion,
        usuario_activo: usuario_activo,
        roles: roles
      }

      usuarios_data << usuario_data
    end


 ##aqui


      response = @usuarios.includes(
        :empleado,
        :tipousuario,
        :profesor
      ).as_json(include: [
        :empleado,
        :tipousuario,
        :profesor
      ])

    # render json: response, status: :ok
    render json: usuarios_data, status: :ok
    end

    ##ESTO SUPESTAMENTE ES PARA CAMBIAR EL ESTADO DE ACTIVO A INCACTIVO

    def cambiar_estado
      begin
        id_usuario = params[:id]
        usuario_actual = current_user.id
    
        if id_usuario != usuario_actual
          usuario = Usuario.find(id_usuario)
          estado_activo = usuario.ACTIVO_USUARIO
    
          # Cambiar el estado del usuario
          usuario.ACTIVO_USUARIO = !estado_activo
          if usuario.save
            render json: { message: 'Estado del usuario actualizado correctamente' }, status: :ok
          else
            render json: { error: 'No se pudo cambiar el estado del usuario' }, status: :unprocessable_entity
          end
        else
          render json: { message: 'No se pudo actualizar el estado del usuario' }, status: :ok
        end
      rescue => e
        render json: { error: 'Ocurrió un error al cambiar el estado del usuario' }, status: :internal_server_error
      end
    end
    
## ACA TERMINA

##OBTIENE USUARIO, 
## ID_TIPO_USUARIO (Que Debe ser de valor 2) 
##y USUARIO_ACTIVO (Debe ser true) y aparte obtener 
##los atributos NOMBRE_USUARIO y ID_USUARIO

/
def obtener_usuarios_tipo_rol
  @usuarios = Usuario.where(ID_TIPO_USUARIO: 2, USUARIO_ACTIVO: true)
                     .pluck(:NOMBRE_USUARIO, :ID_USUARIO)
  
  render json: @usuarios, status: :ok
end
/

def obtener_usuarios_tipo_rol
  lista_roles = []

  usuarios_roles = Usuario.where(ID_F_TIPO_USUARIO: 2, ACTIVO_USUARIO: true)

  if usuarios_roles.present?
    usuarios_roles.each do |rol_it|
      nombre_usuario = rol_it.NOMBRE_USUARIO
      id_usuario = rol_it.ID_USUARIO

      rol_pivote = { id_usuario: id_usuario, nombre_usuario: nombre_usuario }
      lista_roles.push(rol_pivote)
    end
  end

  render json: lista_roles, status: :ok
end


   
## AQUI TERMINA ESTA FUNCION

  
    def show
      @usuario = Usuario.where("ACTIVO_USUARIO = ?", true)
      .where(ID_USUARIO: params[:id])

      # validacion de existencia de empleado
      if @usuario.first.nil?
        render json: {error: "Usuario no encontrado"}, status: :not_found
        return
      end

      response = @usuario.includes(
        :empleado,
        :tipousuario,
        :profesor
      ).as_json(include: [
        :empleado,
        :tipousuario,
        :profesor
      ]).first
    
      render json: response, status: :ok
    end
  
    def create
      @usuario = Usuario.new(usuario_params)
      if @usuario.save
        render json: @usuario, status: :created
      else
        render json: @usuario.errors, status: :unprocessable_entity
      end
    end
  /
    def update
      @usuario = Usuario.find(params[:id])
      if @usuario.update(usuario_params)
        render json: @usuario, status: :ok
      else
        render json: @usuario.errors, status: :unprocessable_entity
      end
    end
/

def update
  @usuario = Usuario.find(params[:id])

  # Verifica si se realiza un cambio en el estado del usuario
  if params[:ACTIVO_USUARIO].present? && params[:ACTIVO_USUARIO] != @usuario.ACTIVO_USUARIO
    @usuario.ACTIVO_USUARIO = params[:ACTIVO_USUARIO]

    if @usuario.save
      render json: { message: "Estado del usuario actualizado" }, status: :ok
    else
      render json: { error: "No se pudo actualizar el estado del usuario" }, status: :unprocessable_entity
    end
  else
    # Si no hay cambio en el estado,flujo normal
    if @usuario.update(usuario_params)
      render json: @usuario, status: :ok
    else
      render json: @usuario.errors, status: :unprocessable_entity
    end
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
