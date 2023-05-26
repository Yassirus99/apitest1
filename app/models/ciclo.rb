class Ciclo < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'CICLO'
  
    # Definir los atributos del modelo
    attribute :ID_CICLO, :integer
    attribute :NUMERO_CICLO, :integer
  
    # Validaciones
    validates :ID_CICLO, presence: true
    validates :NUMERO_CICLO, presence: true
  end
  