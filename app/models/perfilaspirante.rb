class Perfilaspirante < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'PERFILASPIRANTE'
    self.primary_key = 'ID_PERFIL_ASPIRANTE'
  
    attribute :ID_PERFIL_ASPIRANTE, :integer
    attribute :CODIGO_MAESTRIA, :string
    attribute :FECHA_CREACION, :date
    attribute :FECHA_MODIFICACION, :date
  
    validates :CODIGO_MAESTRIA, presence: true, length: { maximum: 7 }
    validates :FECHA_CREACION, presence: true
    validates :FECHA_MODIFICACION, presence: true
  end
  