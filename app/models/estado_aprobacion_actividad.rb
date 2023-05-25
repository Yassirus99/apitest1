class EstadoAprobacionActividad < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'ESTADO_APROBACION_ACTIVIDAD'
  
    # Definir los atributos del modelo
    attribute :ID_ESTADO_APROBACION_ACTIVIDAD, :integer
    attribute :ESTADO_APROBACION_ACTIVIDAD, :string
  
    # Validaciones
    validates :ID_ESTADO_APROBACION_ACTIVIDAD, presence: true
    validates :ESTADO_APROBACION_ACTIVIDAD, presence: true
  end
  