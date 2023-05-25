class TipoDocumentacionProfesor < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'TIPO_DOCUMENTACION_PROFESOR'
    self.primary_key = 'ID_TIPO_DOCUMENTACION_PROFESOR'
  
    attribute :ID_TIPO_DOCUMENTACION_PROFESOR, :integer
    attribute :TIPO_DOCUMENTACION_PROFESOR, :string, limit: 20
  
    validates :TIPO_DOCUMENTACION_PROFESOR, presence: true, length: { maximum: 20 }
  end
  