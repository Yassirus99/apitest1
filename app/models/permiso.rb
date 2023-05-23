class Permiso < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'PERMISO'
    self.primary_key = 'ID_PERMISO'
  
    attribute :ID_PERMISO, :integer
    attribute :ID_F_ROL_USUARIO, :integer
    attribute :ID_F_RECURSO, :integer
    attribute :ACTIVO_PERMISO, :boolean
    attribute :FECHA_CREACION, :date
    attribute :FECHA_MODIFICACION, :date
  
    validates :ID_F_ROL_USUARIO, presence: true
    validates :ID_F_RECURSO, presence: true
    validates :ACTIVO_PERMISO, inclusion: { in: [true, false] }
    validates :FECHA_CREACION, presence: true
    validates :FECHA_MODIFICACION, presence: true
  end
  