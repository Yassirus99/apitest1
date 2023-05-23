class Observacionesprogramaasignatura < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'Observacionesprogramaasignatura'
    self.primary_key = 'ID_OBSERVACION_PROGRAMA_ASIGNATURA'
  
    attribute :ID_OBSERVACION_PROGRAMA_ASIGNATURA, :integer
    attribute :OBSERVACION_PROGRAMA_ASIGNATURA, :string
    attribute :ID_F_PROGRAMA_ASIGNATURA, :integer
    attribute :ID_F_ESTADO_OBSERVACION_PROGRAMA_ASIGNATURA, :integer
  
    # Validaciones
    validates :ID_OBSERVACION_PROGRAMA_ASIGNATURA, presence: true
    validates :OBSERVACION_PROGRAMA_ASIGNATURA, presence: true
    validates :ID_F_PROGRAMA_ASIGNATURA, presence: true
    validates :ID_F_ESTADO_OBSERVACION_PROGRAMA_ASIGNATURA, presence: true
  end
  