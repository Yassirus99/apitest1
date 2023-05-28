class Estadoobservacionprogramaasignatura < ApplicationRecord
    self.table_name = "ESTADOOBSERVACIONPROGRAMAASIGNATURA"
    self.primary_key = "ID_ESTADO_OBSERVACION_PROGRAMA_ASIGNATURA"

    attribute :ID_ESTADO_OBSERVACION_PROGRAMA_ASIGNATURA, :integer
    attribute :ESTADO_OBSERVACION_PRGRAMA_ASIGNATURA, :string

    validates :ID_ESTADO_OBSERVACION_PROGRAMA_ASIGNATURA, presence: true
    validates :ESTADO_OBSERVACION_PRGRAMA_ASIGNATURA, presence: true
    

end
