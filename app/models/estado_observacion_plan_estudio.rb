class EstadoObservacionPlanEstudio < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'ESTADO_OBSERVACION_PLAN_ESTUDIO'
  
    # Definir los atributos del modelo
    attribute :ID_ESTADO_OBSERVACION_PLAN_ESTUDIO, :integer
    attribute :ESTADO_OBSERVACION_PLAN_ESTUDIO, :string
  
    # Validaciones
    validates :ID_ESTADO_OBSERVACION_PLAN_ESTUDIO, presence: true
    validates :ESTADO_OBSERVACION_PLAN_ESTUDIO, presence: true
end
  