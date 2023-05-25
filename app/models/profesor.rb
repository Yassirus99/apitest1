class Profesor < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'PROFESOR'
    self.primary_key = 'ID_PROFESOR'
  
    attribute :ID_PROFESOR, :integer
    attribute :ID_F_TIPO_PROFESOR, :integer
  
    validates :ID_F_TIPO_PROFESOR, presence: true
  end
  