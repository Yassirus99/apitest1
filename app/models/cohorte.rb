class Cohorte < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'COHORTE'
  
    # Definir los atributos del modelo
    attribute :ID_COHORTE, :integer
    attribute :CODIGO_MAESTRIA, :string
    attribute :ANIO_PROMEDIO_INGRESO, :date
    attribute :ANIO_PROMEDIO_TITULACION, :date
  
    # Validaciones
    validates :ID_COHORTE, presence: true
    validates :CODIGO_MAESTRIA, presence: true
    validates :ANIO_PROMEDIO_INGRESO, presence: true
    validates :ANIO_PROMEDIO_TITULACION, presence: true
  end
  