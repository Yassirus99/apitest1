class TipoRecurso < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'TIPO_RECURSO'
    self.primary_key = 'ID_TIPO_RECURSO'
  
    attribute :ID_TIPO_RECURSO, :integer
    attribute :TIPO_RECURSO, :string, limit: 20
  
    validates :TIPO_RECURSO, presence: true, length: { maximum: 20 }
  end
  