class Gradoacademico < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'Gradoacademico'
    self.primary_key = 'ID_GRADO_ACADEMICO'
  
    attribute :ID_GRADO_ACADEMICO, :integer
    attribute :ID_EXPEDIENTE_ACADEMICO, :integer
    attribute :GRADO_ACADEMICO, :string
    attribute :DESCRIPCION_GRADO_ACADEMICO, :string
    attribute :DOCUMENTO_GRADO_ACADEMICO, :binary
    attribute :ACTIVO_GRADO_ACADEMICO, :boolean
    attribute :FECHA_CREACION, :date
    attribute :FECHA_MODIFICACION, :date
  
    # Validaciones
    validates :ID_GRADO_ACADEMICO, presence: true
    validates :ID_EXPEDIENTE_ACADEMICO, presence: true
    validates :GRADO_ACADEMICO, presence: true
    validates :DESCRIPCION_GRADO_ACADEMICO, presence: true
    validates :DOCUMENTO_GRADO_ACADEMICO, presence: true
    validates :ACTIVO_GRADO_ACADEMICO, inclusion: { in: [true, false] }
    validates :FECHA_CREACION, presence: true
    validates :FECHA_MODIFICACION, presence: true
  end
  