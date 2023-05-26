class AreaConocimiento < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'AREA_CONOCIMIENTO'
  
    # Definir los atributos del modelo
    attribute :ID_AREA_CONOCIMIENTO, :integer
    attribute :AREA_CONOCIMIENTO, :string
  
    # Validaciones
    validates :ID_AREA_CONOCIMIENTO, presence: true
    validates :AREA_CONOCIMIENTO, presence: true
  end
  