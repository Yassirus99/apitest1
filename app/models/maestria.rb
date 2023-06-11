class Maestria < ApplicationRecord
  # Nombre de la tabla en la base de datos
  self.table_name = 'MAESTRIA'
  self.primary_key = 'CODIGO_MAESTRIA'

  belongs_to :estado_maestria, foreign_key: "ID_ESTADO_MAESTRIA", primary_key: "ID_ESTADO_MAESTRIA", optional: true
  belongs_to :coordinador_academico, foreign_key: "ID_F_COORDINADOR_ACADEMICO", primary_key: "ID_EMPLEADO", class_name: 'Empleado', optional: true
  belongs_to :empleado_creador, foreign_key: "ID_F_EMPLEADO_CREADOR", primary_key: "ID_EMPLEADO", class_name: 'Empleado', optional: true
  belongs_to :escuela, foreign_key: "ID_F_ESCUELA", primary_key: "ID_ESCUELA", optional: true
  has_many   :observaciones, foreign_key: "ID_F_MAESTRIA", primary_key: "CODIGO_MAESTRIA", class_name: 'Observacionmaestria', dependent: :destroy

  attribute :CODIGO_MAESTRIA, :string
  attribute :ID_ESTADO_MAESTRIA, :integer
  attribute :ID_F_COORDINADOR_ACADEMICO, :integer
  attribute :ID_F_EMPLEADO_CREADOR, :integer
  attribute :ID_F_ESCUELA, :integer
  attribute :NOMBRE_MAESTRIA, :string
  attribute :DESCRIPCION, :string

  # Validaciones
  validates :CODIGO_MAESTRIA, presence: true
  validates :ID_F_COORDINADOR_ACADEMICO, presence: false, numericality: { only_integer: true }
  validates :ID_F_ESCUELA, presence: false, numericality: { only_integer: true }
  validates :NOMBRE_MAESTRIA, presence: true
end
