class Ofertacontratacion < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'OFERTACONTRATACION'
    self.primary_key = 'ID_OFERTA_CONTRATACION'
  
    attribute :ID_OFERTA_CONTRATACION, :integer
    attribute :ID_COHORTE, :integer
    attribute :ID_MAESTRIA_ASIGNATURA, :integer
    attribute :ID_F_MAESTRIA_ASIGNATURA, :integer
    attribute :ID_F_COHORTE, :integer
    attribute :ID_F_ESTADO_OFERTA, :integer
    attribute :FECHA_INICIO_OFERTA, :datetime
    attribute :FECHA_FIN_OFERTA, :datetime
  
    validates :ID_COHORTE, presence: true
    validates :ID_MAESTRIA_ASIGNATURA, presence: true
    validates :ID_F_MAESTRIA_ASIGNATURA, presence: true
    validates :ID_F_COHORTE, presence: true
    validates :ID_F_ESTADO_OFERTA, presence: true
    validates :FECHA_INICIO_OFERTA, presence: true
    validates :FECHA_FIN_OFERTA, presence: true
  end
  