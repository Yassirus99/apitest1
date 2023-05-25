class Ciclomaestria < ApplicationRecord
    self.table_name = 'CICLOMAESTRIA'
  
    attribute :ID_CICLO_ASIGNATURA, :integer
    attribute :CODIGO_MAESTRIA, :string
  
    # Asociaciones
    belongs_to :maestria, foreign_key: 'CODIGO_MAESTRIA'
  
    # Validaciones
    validates :ID_CICLO_ASIGNATURA, presence: true
    validates :CODIGO_MAESTRIA, presence: true
  end
  