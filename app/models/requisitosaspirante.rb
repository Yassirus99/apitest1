class RequisitoAspirante < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'REQUISITOS_ASPIRANTE'
    self.primary_key = 'ID_REQUISITO_PERFIL_ASPIRANTE'
  
    attribute :ID_REQUISITO_PERFIL_ASPIRANTE, :integer
    attribute :REQUISITO_PERFIL_ASPIRANTE, :string, limit: 20
    attribute :DESCRIPCION, :string, limit: 150
    attribute :ACTIVO_REQUISITO_ASPIRANTE, :boolean
  
    validates :REQUISITO_PERFIL_ASPIRANTE, presence: true, length: { maximum: 20 }
    validates :DESCRIPCION, presence: true, length: { maximum: 150 }
    validates :ACTIVO_REQUISITO_ASPIRANTE, inclusion: { in: [true, false] }
  end
  