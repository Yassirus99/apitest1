class MetodologiaEnsenanza < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'METODOLOGIAENSENANZA'
    self.primary_key = 'ID_METODOLOGIA'
  
    attribute :ID_METODOLOGIA, :integer
    attribute :NOMBRE_METODOLOGIA, :string
    attribute :ACTIVO_METODOLOGIA, :boolean
  
    # Validaciones
    validates :NOMBRE_METODOLOGIA, presence: true
    validates :ACTIVO_METODOLOGIA, inclusion: { in: [true, false] }
  end
  