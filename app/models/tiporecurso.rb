class Tiporecurso < ApplicationRecord
    self.table_name = "TIPORECURSO"
    self.primary_key = "ID_TIPO_RECURSO"

    attribute : ID_TIPO_RECURSO,integer
    attribute : TIPO_RECURSO, integer

    validate: ID_TIPO_RECURSO,presence :true
    validate: TIPO_RECURSO,presence :true

end