class Planestudios < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'PLANESTUDIOS'
    self.primary_key = 'ID_PLAN_ESTUDIO'
  
    attribute :ID_PLAN_ESTUDIO, :integer
    attribute :CODIGO_MAESTRIA, :string
    attribute :ID_MODALIDAD, :integer
    attribute :ID_F_MODALIDAD, :integer
    attribute :ID_F_ESTADO_PLAN_ESTUDIO, :integer
    attribute :ID_F_EMPLEADO_CREACION, :integer
    attribute :CUM_MINIMO, :decimal, precision: 10, scale: 2
    attribute :NUMERO_ASIGNATURAS, :integer
    attribute :DURACION_CARRERA_ANIO, :integer
    attribute :DURACION_CARRERA_CICLOS, :integer
    attribute :NOMBRE_TITULO_CARRERA, :string
    attribute :FECHA_CREACION_PLAN, :datetime
    attribute :FECHA_MODIFICACION_PLAN, :datetime
  
    validates :CODIGO_MAESTRIA, presence: true, length: { maximum: 7 }
    validates :ID_MODALIDAD, presence: true
    validates :ID_F_MODALIDAD, presence: true
    validates :ID_F_ESTADO_PLAN_ESTUDIO, presence: true
    validates :ID_F_EMPLEADO_CREACION, presence: true
    validates :CUM_MINIMO, presence: true
    validates :NUMERO_ASIGNATURAS, presence: true
    validates :DURACION_CARRERA_ANIO, presence: true
    validates :DURACION_CARRERA_CICLOS, presence: true
    validates :NOMBRE_TITULO_CARRERA, presence: true, length: { maximum: 50 }
    validates :FECHA_CREACION_PLAN, presence: true
    validates :FECHA_MODIFICACION_PLAN, presence: true
  end
  