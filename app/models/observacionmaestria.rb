class Observacionmaestria < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'OBSERVACIONMAESTRIA'
    self.primary_key = 'ID_OBSERVACION_MAESTRIA'
  
    attribute :ID_OBSERVACION_MAESTRIA, :integer
    attribute :OBSERVACION_MAESTRIA, :string
    attribute :ID_F_MAESTRIA, :integer
    attribute :ID_F_ESTADO_OBSERVACION_MAESTRIA, :integer
  
    validates :OBSERVACION_MAESTRIA, presence: true
    validates :ID_F_MAESTRIA, presence: true
    validates :ID_F_ESTADO_OBSERVACION_MAESTRIA, presence: true
  end
  