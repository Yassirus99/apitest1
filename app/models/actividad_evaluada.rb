class ActividadEvaluada < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'ACTIVIDAD_EVALUADA'
    self.primary_key = 'ID_ACTIVIDAD_EVALUADA'
  
    # Definir los atributos del modelo
    attribute :ID_ACTIVIDAD_EVALUADA, :integer
    attribute :ID_F_TIPO_EVALUACION, :integer
    attribute :ID_F_ESTADO_APROBACION_ACTIVIDAD, :integer
    attribute :PORCENTAJE_EVALUACION, :integer
    attribute :NUMERO_ACTIVIDAD_EVALUADA, :integer
  
    # Validaciones
    validates :ID_ACTIVIDAD_EVALUADA, presence: true
    validates :ID_F_TIPO_EVALUACION, presence: true
    validates :ID_F_ESTADO_APROBACION_ACTIVIDAD, presence: true
    validates :PORCENTAJE_EVALUACION, presence: true
    validates :NUMERO_ACTIVIDAD_EVALUADA, presence: true
  end
  