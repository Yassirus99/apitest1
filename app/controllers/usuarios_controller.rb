class UsuariosController < ApplicationController
    # before_action :set_usuario, only: [:show, :destroy]

  def index
    @usuarios = Usuario.includes(
      :empleado,
      :tipousuario,
      :profesor,
      :rol
    )
    # .where("ACTIVO_USUARIO = ?", true)

    @usuarios = @usuarios.where("ACTIVO_ROL = ?", true).references(:rol)

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

    # get all includes
    response = @usuarios.as_json(include: [
      :estado_maestria,
      :empleado,
      :tipousuario,
      :profesor,
      :observaciones,
      :permisos => {
        :include => [
          :recurso,
        ]
      },
      :recursos => {},
      :rol => {
        :include => [
          :usuario_rol,
          :usuario
        ]
      }
    ])

    # render json: response, status: :ok
    render json: response, status: :ok
  end

  def usuario_rol
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

    response = @usuarios.includes(
      :empleado,
      :tipousuario,
      :profesor,
      :rol
    ).as_json(include: [
      :empleado,
      :tipousuario,
      :profesor,
      :rol
    ])

    render json: response, status: :ok
  end

  # def cambiar_estado
  #   begin
  #     id_usuario = params[:id]
  #     usuario_actual = current_user.id

  #     if id_usuario != usuario_actual
  #       usuario = Usuario.find(id_usuario)
  #       estado_activo = usuario.ACTIVO_USUARIO

  #       # Cambiar el estado del usuario
  #       usuario.ACTIVO_USUARIO = !estado_activo
  #       if usuario.save
  #         render json: { message: 'Estado del usuario actualizado correctamente' }, status: :ok
  #       else
  #         render json: { error: 'No se pudo cambiar el estado del usuario' }, status: :unprocessable_entity
  #       end
  #     else
  #       render json: { message: 'No se pudo actualizar el estado del usuario' }, status: :ok
  #     end
  #   rescue => e
  #     render json: { error: 'Ocurrió un error al cambiar el estado del usuario' }, status: :internal_server_error
  #   end
  # end


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
    ActiveRecord::Base.transaction do
      if !usuario_params[:NOMBRE_USUARIO].present?
        render json: {error: "Nombre de usuario no puede estar vacío"}, status: :bad_request
        return
      end

      if !usuario_params[:CORREO_ELECTRONICO_USUARIO].present?
        render json: {error: "Correo electrónico no puede estar vacío"}, status: :bad_request
        return
      end

      if Usuario.find_by(CORREO_ELECTRONICO_USUARIO: usuario_params[:CORREO_ELECTRONICO_USUARIO])
        render json: {error: "Correo electrónico ya existe"}, status: :bad_request
        return
      end

      if Usuario.find_by(NOMBRE_USUARIO: usuario_params[:NOMBRE_USUARIO])
        render json: {error: "Nombre de usuario ya existe"}, status: :bad_request
        return
      end

      @usuario = Usuario.new(usuario_params)
      if @usuario.save!

        if params[:rol].present?
          for rol in rol_params
            @rol = Rol.new({
              ID_F_USUARIO: @usuario.ID_USUARIO,
              ID_F_USUARIO_ROL: rol[:id_usuario],
              ACTIVO_ROL: true,
              FECHA_CREACION: Time.now,
              FECHA_MODIFICACION: Time.now
            })
            if @rol.save
              next
            else
              render json: @rol.errors, status: :unprocessable_entity
              raise ActiveRecord::Rollback
              return
            end
          end
        end
        @usuario = Usuario.includes(
          :empleado,
          :tipousuario,
          :profesor,
          :rol
        ).find_by(ID_USUARIO: @usuario.ID_USUARIO)
        @usuario = @usuario.as_json(include: [
          :empleado,
          :tipousuario,
          :profesor,
          :rol => {
            :include => [
              :usuario_rol,
              :usuario
            ]
          }
        ])
        render json: @usuario, status: :created
        ActiveRecord::Base.connection.commit_db_transaction
        return
      else
        render json: @usuario.errors, status: :unprocessable_entity
      end
    end
  end


  def update
    @usuario = Usuario.find_by(ID_USUARIO: params[:id])

    if @usuario.nil?
      render json: {error: "Usuario no encontrado"}, status: :not_found
      return
    end

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

  def rol_params
    params.require(:rol).map { |rol_params| rol_params.permit(:id_usuario) }
  end

  def validar_usuario
    @usuario = Usuario.find_by(CORREO_ELECTRONICO_USUARIO: params[:CORREO_ELECTRONICO_USUARIO])
    if @usuario.nil?
      render json: {error: "Usuario no encontrado"}, status: :not_found
    end
  end

end
