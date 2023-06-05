class Rol < ApplicationRecord
  self.primary_key = "ID_ROL"
  self.table_name = 'ROL'

  belongs_to :usuario, foreign_key: 'ID_F_USUARIO', primary_key: 'ID_USUARIO', optional: true
  belongs_to :usuario_rol, foreign_key: 'ID_F_USUARIO_ROL', primary_key: 'ID_USUARIO'
  
  attribute :ID_ROL, :integer
  attribute :ID_F_USUARIO, :integer
  attribute :ID_F_USUARIO_ROL, :integer
  attribute :ACTIVO_ROL, :boolean
  attribute :FECHA_CREACION, :date
  attribute :FECHA_MODIFICACION, :date

  validates :ID_ROL, :ID_F_USUARIO_ROL, presence: true
  validates :ACTIVO_ROL, inclusion: { in: [true, false] }

  belongs_to :usuario, foreign_key: 'ID_F_USUARIO', class_name: 'Usuario'
  belongs_to :usuario_rol, foreign_key: 'ID_F_USUARIO_ROL', class_name: 'Usuario'
  
end
  