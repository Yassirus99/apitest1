class EstadoContratacionAspirante < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'ESTADO_CONTRATACION_ASPIRANTE'
  
    # Definir los atributos del modelo
    attribute :ID_ESTADO_CONTRATACION_ASPIRANTE, :integer
    attribute :ESTADO_CONTRATACION_ASPIRANTE, :string
    attribute :ACTIVO_ESTADO_CONTRATACION, :boolean
  
    # Validaciones
    validates :ID_ESTADO_CONTRATACION_ASPIRANTE, presence: true
    validates :ESTADO_CONTRATACION_ASPIRANTE, presence: true
    validates :ACTIVO_ESTADO_CONTRATACION, inclusion: { in: [true, false] }
  end
  