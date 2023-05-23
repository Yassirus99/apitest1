class Maestriaasignatura < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'Maestriaasignatura'
    self.primary_key = 'ID_MAESTRIA_ASIGNATURA'
  
    attribute :ID_MAESTRIA_ASIGNATURA, :integer
    attribute :CODIGO_MAESTRIA, :string
    attribute :ID_F_ASIGNATURA, :integer
    attribute :ID_F_CICLO, :integer
    attribute :ACTIVO_MAESTRIA_ASIGNATURA, :boolean
  
    # Validaciones
    validates :ID_MAESTRIA_ASIGNATURA, presence: true
    validates :ID_F_ASIGNATURA, presence: true
    validates :ID_F_CICLO, presence: true
    validates :ACTIVO_MAESTRIA_ASIGNATURA, inclusion: { in: [true, false] }
  end
  