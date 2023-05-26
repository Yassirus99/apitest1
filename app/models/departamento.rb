class Departamento < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'DEPARTAMENTO'
  
    # Definir los atributos del modelo
    attribute :ID_DEPARTAMENTO, :integer
    attribute :DEPARTAMENTO, :string
  
    # Validaciones
    validates :ID_DEPARTAMENTO, presence: true
    validates :DEPARTAMENTO, presence: true
  end
  