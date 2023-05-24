class Estadoprogramaasignatura < ApplicationRecord
    self.primary_key = "ID_ESTADO_PROGRAMA_ASIGNATURA"
    self.table_name = "ESTADO_PROGRAMA_ASIGNATURA"

    attribute: ID_ESTADO_PROGRAMA_ASIGNATURA, :integer
    attribute: ESTADO_PROGRAMA_ASIGNATURA, :string

    validates :ID_ESTADO_PROGRAMA_ASIGNATURA,presence :true
    validates :ESTADO_PROGRAMA_ASIGNATURA, presence :true
end
