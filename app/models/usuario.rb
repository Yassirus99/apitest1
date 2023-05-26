class Usuario < ApplicationRecord
  include BCrypt
  self.table_name = "USUARIO"

  attribute :ID_USUARIO, :integer
  attribute :ID_EMPLEADO, :integer
  attribute :ID_F_TIPO_USUARIO, :integer
  attribute :ID_F_PROFESOR, :integer
  attribute :NOMBRE_USUARIO, :string
  attribute :CORREO_ELECTRONICO_USUARIO, :string
  attribute :DESCRIPCION_ROL, :string
  attribute :CONTRASENIA, :string
  attribute :ACTIVO_USUARIO, :boolean
  attribute :FECHA_CREACION_USUARIO, :datetime
  attribute :FECHA_MODIFICACION_USUARIO, :datetime

  def contrasenia=(new_password)
    if new_password.nil? || new_password.empty?
      return
    end
    @password = Password.create(new_password)
    return @password
  end

  def self.new(usuario_params = nil, &block)
    logger.debug "usuario_params: #{usuario_params}"
    usuario_params[:CONTRASENIA] = self.encrypt_password(usuario_params[:CONTRASENIA])
    super(usuario_params, &block)
  end

  def update(usuario_params)
    password = usuario_params[:CONTRASENIA]

    if !(password.nil? || password.empty?)
      usuario_params[:CONTRASENIA] = self.encrypt_password(usuario_params[:CONTRASENIA])
    end
    super(usuario_params)
  end

  def encrypt_password(new_password)
    if new_password.nil? || new_password.empty?
      return
    end
    @password = Password.create(new_password)
    return @password
  end

  def self.encrypt_password(new_password)
    if new_password.nil? || new_password.empty?
      return
    end
    @password = Password.create(new_password)
    return @password
  end
end
