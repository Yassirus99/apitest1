class Tipousuario < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'TIPOUSUARIO'
  
   
    attribute :ID_TIPO_USUARIO, :integer
    attribute :TIPO_USUARIO, :string
    attribute :ACTIVO_TIPO_USUARIO, :boolean
   
    validates :TIPO_USUARIO, presence: true
    validates :ACTIVO_TIPO_USUARIO, inclusion: { in: [true, false] }
  end
  