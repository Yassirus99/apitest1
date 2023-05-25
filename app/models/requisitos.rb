class Requisito < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'REQUISITOS'
    self.primary_key = 'ID_REQUISITO'
  
    attribute :ID_REQUISITO, :integer
    attribute :ID_MAESTRIA_ASIGNATURA, :integer
    attribute :MAE_ID_MAESTRIA_ASIGNATURA, :integer
    attribute :ID_F_ASIGNATURA, :integer
    attribute :ID_F_ASIGNATURA_REQUISITO, :integer
    attribute :ACTIVO_REQUISITO_ASIGNATURA, :boolean
  
    validates :ID_MAESTRIA_ASIGNATURA, presence: true
    validates :MAE_ID_MAESTRIA_ASIGNATURA, presence: true
    validates :ID_F_ASIGNATURA, presence: true
    validates :ID_F_ASIGNATURA_REQUISITO, presence: true
    validates :ACTIVO_REQUISITO_ASIGNATURA, inclusion: { in: [true, false] }
  end
  