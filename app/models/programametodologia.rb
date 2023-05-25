class Programametodologia < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'PROGRAMAMETODOLOGIA'
    self.primary_key = 'ID_PROGRAMA_METODOLOGIA'
  
    attribute :ID_PROGRAMA_METODOLOGIA, :integer
    attribute :ID_F_PROGRAMA_ASIGNATURA, :integer
    attribute :ID_F_METODOLOGIA, :integer
    attribute :ACTIVO_PROGRAMA_METODOLOGIA, :boolean
  
    validates :ID_F_PROGRAMA_ASIGNATURA, presence: true
    validates :ID_F_METODOLOGIA, presence: true
    validates :ACTIVO_PROGRAMA_METODOLOGIA, inclusion: { in: [true, false] }
  end