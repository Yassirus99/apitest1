class Municipio < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'Municipio'
    self.primary_key = 'ID_MUNICIPIO'
  
    attribute :ID_MUNICIPIO, :integer
    attribute :ID_F_DEPARTAMENTO, :integer
    attribute :MUNICIPIO, :string
  
    # Validaciones
    validates :ID_MUNICIPIO, presence: true
    validates :ID_F_DEPARTAMENTO, presence: true
    validates :MUNICIPIO, presence: true
  end
  