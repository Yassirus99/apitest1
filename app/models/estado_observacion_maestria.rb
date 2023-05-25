class EstadoObservacionMaestria < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'ESTADO_OBSERVACION_MAESTRIA'
  
    # Definir los atributos del modelo
    attribute :ID_ESTADO_OBSERVACION_MAESTRIA, :integer
    attribute :ESTADO_OBSERVACION_MAESTRIA, :string
  
    # Validaciones
    validates :ID_ESTADO_OBSERVACION_MAESTRIA, presence: true
    validates :ESTADO_OBSERVACION_MAESTRIA, presence: true
  end
  