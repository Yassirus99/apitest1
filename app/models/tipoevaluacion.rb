class TipoEvaluacion < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'TIPO_EVALUACION'
    self.primary_key = 'ID_TIPO_EVALUACION'
  
    attribute :ID_TIPO_EVALUACION, :integer
    attribute :TIPO_EVALUACION, :string, limit: 15
    attribute :ACTIVO_TIPO_EVALUACION, :boolean
  
    validates :TIPO_EVALUACION, presence: true, length: { maximum: 15 }
    validates :ACTIVO_TIPO_EVALUACION, inclusion: { in: [true, false] }
  end
  