class BibliografiaPrograma < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'BIBLIOGRAFIA_PROGRAMA'
  
    # Definir los atributos del modelo
    attribute :ID_BIBLIOGRAFIA_PROGRAMA, :integer
    attribute :ID_F_PROGRAMA_ASIGNATURA, :integer
    attribute :ID_F_FUENTE_BIBLIOGRAFICA, :integer
    attribute :ACTIVO_BIBLIOGRAFIA_PROGRAMA, :boolean
  
    # Validaciones
    validates :ID_BIBLIOGRAFIA_PROGRAMA, presence: true
    validates :ID_F_PROGRAMA_ASIGNATURA, presence: true
    validates :ID_F_FUENTE_BIBLIOGRAFICA, presence: true
    validates :ACTIVO_BIBLIOGRAFIA_PROGRAMA, inclusion: { in: [true, false] }
  end
  