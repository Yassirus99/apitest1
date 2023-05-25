class AspiranteRequisito < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'ASPIRANTE_REQUISITO'
  
    # Definir los atributos del modelo
    attribute :ID_PERFIL_ASPIRANTE_REQUISITO, :integer
    attribute :ID_F_PERFIL_ASPIRANTE, :integer
    attribute :ID_F_REQUISITO_ASPIRANTE, :integer
    attribute :ACTIVO_ASPIRANTE_REQUISITO, :boolean
  
    # Validaciones
    validates :ID_PERFIL_ASPIRANTE_REQUISITO, presence: true
    validates :ID_F_PERFIL_ASPIRANTE, presence: true
    validates :ID_F_REQUISITO_ASPIRANTE, presence: true
    validates :ACTIVO_ASPIRANTE_REQUISITO, inclusion: { in: [true, false] }
  end
  