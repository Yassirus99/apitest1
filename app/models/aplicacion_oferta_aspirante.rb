class AplicacionOfertaAspirante < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'aplicacion_oferta_aspirante'
    self.primary_key = 'ID_COHORTE_ASPIRANTE_PROFESOR'
  
    # Definir los atributos del modelo
    attribute :ID_COHORTE_ASPIRANTE_PROFESOR, :integer
    attribute :ID_OFERTA_CONTRATACION, :integer
    attribute :ID_F_ESTADO_CONTRATACION_ASPIRANTE, :integer
    attribute :ID_F_ASPIRANTE_PROFESOR, :integer
    attribute :ACTIVO_COHORTE_ASPIRANTE, :boolean
  
    # Validaciones
    validates :ID_COHORTE_ASPIRANTE_PROFESOR, presence: true
    validates :ID_OFERTA_CONTRATACION, presence: true
    validates :ID_F_ESTADO_CONTRATACION_ASPIRANTE, presence: true
    validates :ID_F_ASPIRANTE_PROFESOR, presence: true
    validates :ACTIVO_COHORTE_ASPIRANTE, inclusion: { in: [true, false] }
  end
  