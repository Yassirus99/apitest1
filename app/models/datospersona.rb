class Datospersona < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'DATOSPERSONA'

    belongs_to :empleado, foreign_key: "ID_EMPLEADO", primary_key: "ID_EMPLEADO", optional: true
    belongs_to :pais, foreign_key: "ID_F_PAIS_NACIONALIDAD", primary_key: "ID_PAIS", optional: false
    belongs_to :departamento, foreign_key: "ID_F_DEPARTAMENTO_RESIDENCIA", primary_key: "ID_DEPARTAMENTO", optional: true
    belongs_to :municipio, foreign_key: "ID_F_MUNICIPIO_RESIDENCIA", primary_key: "ID_MUNICIPIO", optional: true
    belongs_to :profesor, foreign_key: "ID_F_PROFESOR", primary_key: "ID_PROFESOR", optional: true
  
    # Definir los atributos del modelo
    attribute :ID_PERSONA, :integer
    attribute :ID_EMPLEADO, :integer
    attribute :ID_F_PROFESOR, :integer
    attribute :ID_F_PAIS_NACIONALIDAD, :integer
    attribute :ID_F_DEPARTAMENTO_RESIDENCIA, :integer
    attribute :ID_F_MUNICIPIO_RESIDENCIA, :integer
    attribute :PRIMER_NOMBRE, :string
    attribute :SEGUNDO_NOMBRE, :string
    attribute :TERCER_NOMBRE, :string
    attribute :PRIMER_APELLIDO, :string
    attribute :SEGUNDO_APELLIDO, :string
    attribute :DIRECCION_RESIDENCIA, :string
    attribute :FECHA_NACIMIENTO, :date
    attribute :CORREO_ELECTRONICO, :string
    attribute :CORREO_ELECTRONICO_INSTITUCIONAL, :string
    attribute :DUI, :string
    attribute :NIT, :string
    attribute :NUP, :string
    attribute :NUMERO_PASAPORTE, :string
    attribute :DOCUMENTO_PERSONAL, :string
    attribute :TELEFONO_MOVIL, :string
    attribute :TELEFONO_OFICINA, :string
  
    # Validaciones
    validates :ID_PERSONA, presence: true
    validates :ID_EMPLEADO, presence: true
    validates :ID_F_PROFESOR, presence: true
    validates :ID_F_PAIS_NACIONALIDAD, presence: true
    validates :ID_F_DEPARTAMENTO_RESIDENCIA, presence: true
    validates :ID_F_MUNICIPIO_RESIDENCIA, presence: true
    validates :PRIMER_NOMBRE, presence: true
    validates :SEGUNDO_NOMBRE, presence: true
    validates :TERCER_NOMBRE, presence: true
    validates :PRIMER_APELLIDO, presence: true
    validates :SEGUNDO_APELLIDO, presence: true
    validates :DIRECCION_RESIDENCIA, presence: true
    validates :FECHA_NACIMIENTO, presence: true
    validates :CORREO_ELECTRONICO, presence: true
    validates :CORREO_ELECTRONICO_INSTITUCIONAL, presence: true
    validates :DUI, presence: true
    validates :NIT, presence: true
    validates :NUP, presence: true
    validates :NUMERO_PASAPORTE, presence: true
    validates :DOCUMENTO_PERSONAL, presence: true
    validates :TELEFONO_MOVIL, presence: true
    validates :TELEFONO_OFICINA, presence: true
  end
  