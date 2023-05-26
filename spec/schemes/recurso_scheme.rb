class RecursoScheme
  include Swagger::Blocks

  def self.swagger_doc
    {
      type: :object,
      properties: {
        ID_RECURSO: { type: :integer },
        ID_F_RECURSO_PADRE: { type: :integer },
        ID_F_TIPO_RECURSO: { type: :integer },
        NOMBRE_RECURSO: { type: :string },
        RUTA_RECURSO: { type: :string },
        DESCRIPCION_RECURSO: { type: :string },
        ACTIVO_RECURSO: { type: :boolean },
        FECHA_CREACION: { type: :string },
        FECHA_MODIFICACION: { type: :string }
      },
      required: [
        'ID_F_TIPO_RECURSO',
        'NOMBRE_RECURSO',
        'RUTA_RECURSO',
        'ACTIVO_RECURSO',
        'FECHA_CREACION',
        'FECHA_MODIFICACION'
      ]
    }
  end

end
