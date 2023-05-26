class Escuela < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'ESCUELA'
  
    # Definir los atributos del modelo
    attribute :ID_ESCUELA, :integer
    attribute :NOMBRE_ESCUELA, :string
  
    # Validaciones
    validates :ID_ESCUELA, presence: true
    validates :NOMBRE_ESCUELA, presence: true
  end
  