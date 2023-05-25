class TiporecursoScheme
  include Swagger::Blocks

  def self.swagger_doc
    {
      type: :object,
      properties: {
        ID_TIPO_RECURSO: { type: :integer },
        TIPO_RECURSO: { type: :string }
      },
      required: [
        'ID_TIPO_RECURSO',
        'TIPO_RECURSO'
      ]
    }
  end
end
