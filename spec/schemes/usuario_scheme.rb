class Usuario
  include Swagger::Blocks

  def self.swagger_doc
    {
      type: :object,
      properties: {
        ID_USUARIO: { type: :integer },
        ID_EMPLEADO: { type: :integer },
        ID_F_TIPO_USUARIO: { type: :integer },
        ID_F_PROFESOR: { type: :integer },
        NOMBRE_USUARIO: { type: :string },
        CORREO_ELECTRONICO_USUARIO: { type: :string },
        DESCRIPCION_ROL: { type: :string },
        CONTRASENIA: { type: :string },
        ACTIVO_USUARIO: { type: :boolean },
        FECHA_CREACION_USUARIO: { type: :string },
        FECHA_MODIFICACION_USUARIO: { type: :string }
      },
      required: [
        'ID_F_TIPO_USUARIO',
        'NOMBRE_USUARIO',
        'CONTRASENIA',
        'ACTIVO_USUARIO',
        'FECHA_CREACION_USUARIO',
        'FECHA_MODIFICACION_USUARIO'
      ]
    }
  end
end
