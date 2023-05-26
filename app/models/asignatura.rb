class Asignatura < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'ASIGNATURA'
  
    # Definir los atributos del modelo
    attribute :ID_ASIGNATURA, :integer
    attribute :CODIGO_ASIGNATURA, :string
    attribute :NOMBRE_ASIGNATURA, :string
    attribute :NUMERO_CORRELATIVO, :integer
    attribute :UNIDADES_VALORATIVAS, :integer
  
    # Validaciones
    validates :ID_ASIGNATURA, presence: true
    validates :CODIGO_ASIGNATURA, presence: true
    validates :NOMBRE_ASIGNATURA, presence: true
    validates :NUMERO_CORRELATIVO, presence: true
    validates :UNIDADES_VALORATIVAS, presence: true
  end
  