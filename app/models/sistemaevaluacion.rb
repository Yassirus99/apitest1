class SistemaEvaluacion < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'SISTEMA_EVALUACION'
    self.primary_key = 'ID_SISTEMA_EVALUACION'
  
    attribute :ID_SISTEMA_EVALUACION, :integer
    attribute :ID_F_PROGRAMA_ASIGNATURA, :integer
    attribute :ACTIVO_SISTEMA_EVALUACION, :boolean
    attribute :FECHA_CREACION, :date
    attribute :FECHA_MODIFICACION, :date
  
    validates :ID_F_PROGRAMA_ASIGNATURA, presence: true
    validates :ACTIVO_SISTEMA_EVALUACION, inclusion: { in: [true, false] }
    validates :FECHA_CREACION, presence: true
    validates :FECHA_MODIFICACION, presence: true
  end
  