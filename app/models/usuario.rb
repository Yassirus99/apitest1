class Usuario < ApplicationRecord
  self.table_name = "USUARIO"
  
    # Columnas de la tabla usuario
    # Debes asegurarte que los nombres de las columnas coincidan exactamente con los de tu base de datos
    # y especificar el tipo de datos correspondiente
    attribute :id_usuario, :integer
    attribute :id_empleado, :integer
    attribute :id_f_tipo_usuario, :integer
    attribute :id_f_profesor, :integer
    attribute :nombre_usuario, :string
    attribute :correo_electronico_usuario, :string
    attribute :descripcion_rol, :string
    attribute :contrasenia, :string
    attribute :activo_usuario, :boolean
    attribute :fecha_creacion_usuario, :datetime
    attribute :fecha_modificacion_usuario, :datetime
  end
  