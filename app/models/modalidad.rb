class Modalidad < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'Modalidad'
    self.primary_key = 'ID_MODALIDAD'
  
    attribute :ID_MODALIDAD, :integer
    attribute :MODALIDAD, :string
    attribute :ACTIVO_MODALIDAD, :boolean
  
    # Validaciones
    validates :ID_MODALIDAD, presence: true
    validates :MODALIDAD, presence: true
    validates :ACTIVO_MODALIDAD, inclusion: { in: [true, false] }
  end
  