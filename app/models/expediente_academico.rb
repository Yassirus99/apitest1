class ExpedienteAcademico < ApplicationRecord
    self.primary_key = "ID_EXPEDIENTE_ACADEMICO"
    self.table_name = 'EXPEDIENTEACADEMICO'
  
    attribute :ID_EXPEDIENTE_ACADEMICO, :integer
    attribute :ID_EMPLEADO, :integer
    attribute :ID_PROFESOR, :integer
    attribute :ID_F_PROFESOR, :integer
  
    validates :ID_EXPEDIENTE_ACADEMICO, presence: true
    validates :ID_EMPLEADO, presence: true
    validates :ID_PROFESOR, presence: true
    validates :ID_F_PROFESOR, presence: true
  end
  