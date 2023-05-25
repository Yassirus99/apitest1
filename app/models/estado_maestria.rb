class EstadoMaestria < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'ESTADO_MAESTRIA'
  
    # Definir los atributos del modelo
    attribute :ID_ESTADO_MAESTRIA, :integer
    attribute :ESTADO_MAESTRIA, :string
  
    # Validaciones
    validates :ID_ESTADO_MAESTRIA, presence: true
    validates :ESTADO_MAESTRIA, presence: true
  end
  