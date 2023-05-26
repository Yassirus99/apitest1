class Estadoplanestudio < ApplicationRecord
    self.primary_key = "ID_ESTADO_PLAN_ESTUDIO"
    self.table_name = "ESTADOPLANESTUDIO"

    attribute: ID_ACTIVIDAD_EVALUADA,integer
    attribute: ESTADO_PLAN_ESTUDIO,string
    attribute: DESCRIPCION_ESTADO_PLAN_ESTUDIO,string

    validates: ID_ACTIVIDAD_EVALUADA, presence :true
    validates: ESTADO_PLAN_ESTUDIO,presence :true
    validates: DESCRIPCION_ESTADO_PLAN_ESTUDIO,presence :true
end
