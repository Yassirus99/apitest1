class TipoProfesor < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'TIPO_PROFESOR'
    self.primary_key = 'ID_TIPO_PROFESOR'
  
    attribute :ID_TIPO_PROFESOR, :integer
    attribute :TIPO_PROFESOR, :string, limit: 15
    attribute :ACTIVO_TIPO_PROFESOR, :boolean
  
    validates :TIPO_PROFESOR, presence: true, length: { maximum: 15 }
    validates :ACTIVO_TIPO_PROFESOR, inclusion: { in: [true, false] }
  end
  