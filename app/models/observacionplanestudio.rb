class Observacionplanestudio < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'OBSERVACIONPLANESTUDIO'
    self.primary_key = 'ID_OBSERVACION_PLAN_ESTUDIO'
  
    attribute :ID_OBSERVACION_PLAN_ESTUDIO, :integer
    attribute :ID_F_ESTADO_OBSERVACION_PLAN_ESTUDIO, :integer
    attribute :OBSERVACION_PLAN_ESTUDIO, :string
    attribute :ID_F_PLAN_ESTUDIOS, :integer
  
    validates :ID_F_ESTADO_OBSERVACION_PLAN_ESTUDIO, presence: true
    validates :OBSERVACION_PLAN_ESTUDIO, presence: true
    validates :ID_F_PLAN_ESTUDIOS, presence: true
  end
  