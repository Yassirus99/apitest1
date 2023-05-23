class Programaasignatura < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'PROGRAMAASIGNATURA'
    self.primary_key = 'ID_PROGRAMA_ASIGNATURA'
  
    attribute :ID_PROGRAMA_ASIGNATURA, :integer
    attribute :ID_F_ASIGNATURA, :integer
    attribute :ID_F_ESTADO_PROGRAMA_ASIGNATURA, :integer
    attribute :ID_F_EMPLEADO_CREADOR, :integer
    attribute :ACTIVO_PROGRAMA_ASIGNATURA, :boolean
    attribute :NUM_HORAS_PRACTICAS_SEMANA, :integer
    attribute :NUM_HORAS_TEORICAS_SEMANA, :integer
    attribute :DURACION_SEMANAS, :integer
    attribute :INTRODUCCION, :string, limit: 250
    attribute :DESCRIPCION, :string, limit: 150
    attribute :OBJETIVOS, :text
    attribute :METODOLOGIA_DESCRIPCION, :string, limit: 150
  
    validates :ID_F_ASIGNATURA, presence: true
    validates :ID_F_ESTADO_PROGRAMA_ASIGNATURA, presence: true
    validates :ID_F_EMPLEADO_CREADOR, presence: true
    validates :ACTIVO_PROGRAMA_ASIGNATURA, inclusion: { in: [true, false] }
    validates :NUM_HORAS_PRACTICAS_SEMANA, presence: true
    validates :NUM_HORAS_TEORICAS_SEMANA, presence: true
    validates :DURACION_SEMANAS, presence: true
    validates :INTRODUCCION, presence: true, length: { maximum: 250 }
    validates :DESCRIPCION, presence: true, length: { maximum: 150 }
    validates :OBJETIVOS, presence: true
    validates :METODOLOGIA_DESCRIPCION, presence: true, length: { maximum: 150 }
  end
  