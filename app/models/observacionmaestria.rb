class Observacionmaestria < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'OBSERVACIONMAESTRIA'
    self.primary_key = 'ID_OBSERVACION_MAESTRIA'

    belongs_to :estado, foreign_key: "ID_F_ESTADO_OBSERVACION_MAESTRIA", primary_key: "ID_ESTADO_OBSERVACION_MAESTRIA", class_name: 'EstadoObservacionMaestria', optional: true
    belongs_to :maestria, foreign_key: "ID_F_MAESTRIA", primary_key: "CODIGO_MAESTRIA", class_name: 'Maestria', optional: true
  
    attribute :ID_OBSERVACION_MAESTRIA, :integer
    attribute :OBSERVACION_MAESTRIA, :string
    attribute :ID_F_MAESTRIA, :string
    attribute :ID_F_ESTADO_OBSERVACION_MAESTRIA, :integer
  
    validates :OBSERVACION_MAESTRIA, presence: true
    validates :ID_F_MAESTRIA, presence: true
    validates :ID_F_ESTADO_OBSERVACION_MAESTRIA, presence: true
  end
  