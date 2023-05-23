class Maestria < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'Maestria'
    self.primary_key = 'CODIGO_MAESTRIA'
  
    attribute :CODIGO_MAESTRIA, :string
    attribute :ID_EMPLEADO, :integer
    attribute :ID_F_COORDINADOR_ACADEMICO, :integer
    attribute :ID_F_ESCUELA, :integer
    attribute :NOMBRE_MAESTRIA, :string
    attribute :DESCRIPCION, :string
  
    # Validaciones
    validates :CODIGO_MAESTRIA, presence: true

  end
  