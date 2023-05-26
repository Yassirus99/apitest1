class CicloMaestria < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'CICLO_MAESTRIA'
  
    # Definir los atributos del modelo
    attribute :ID_CICLO_ASIGNATURA, :integer
    attribute :CODIGO_MAESTRIA, :string
    attribute :ID_F_CICLO, :integer
  
    # Validaciones
    validates :ID_CICLO_ASIGNATURA, presence: true
    validates :CODIGO_MAESTRIA, presence: true
    validates :ID_F_CICLO, presence: true
  end
  