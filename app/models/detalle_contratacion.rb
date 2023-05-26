class DetalleContratacion < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'DETALLE_CONTRATACION'
  
    # Definir los atributos del modelo
    attribute :ID_DETALLE_CONTRATACION, :integer
    attribute :ID_COHORTE_ASPIRANTE_PROFESOR, :integer
    attribute :MONTO_PAGO_HORA, :integer
    attribute :FECHA_CONTRATACION, :date
  
    # Validaciones
    validates :ID_DETALLE_CONTRATACION, presence: true
    validates :ID_COHORTE_ASPIRANTE_PROFESOR, presence: true
    validates :MONTO_PAGO_HORA, presence: true
    validates :FECHA_CONTRATACION, presence: true
  end
  