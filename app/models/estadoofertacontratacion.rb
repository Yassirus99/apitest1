class Estadoofertacontratacion < ApplicationRecord
    self.table_name = "ESTADOOFERTACONTRATACION"
    self.primary_key = "ID_ESTADO_OFERTA_CONTRATACION"

    attribute :ID_ESTADO_OFERTA_CONTRATACION, :integer
    attribute :ESTADO_OFERTA_CONTRATACION

    validates :ID_ESTADO_OFERTA_CONTRACACION, presence: true
    validates :ESTADO_OFERTA_CONTRATACION, presence: true
    
end
