class Expedienteacademico < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'Expedienteacademico'
    self.primary_key = 'ID_EXPEDIENTE_ACADEMICO'
  
    attribute :ID_EXPEDIENTE_ACADEMICO, :integer
    attribute :ID_EMPLEADO, :integer
    attribute :ID_PROFESOR, :integer
    attribute :ID_F_EMPLEADO, :integer
    attribute :ID_F_PROFESOR, :integer
  
    # Validaciones
    validates :ID_EXPEDIENTE_ACADEMICO, presence: true
    validates :ID_EMPLEADO, presence: true
    validates :ID_PROFESOR, presence: true
    validates :ID_F_EMPLEADO, presence: true
    validates :ID_F_PROFESOR, presence: true
  end
  