class CohorteEstudiante < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'COHORTE_ESTUDIANTE'
  
    # Definir los atributos del modelo
    attribute :ID_COHORTE_ESTUDIANTE, :integer
    attribute :ID_F_COHORTE, :integer
    attribute :ID_F_ESTUDIANTE, :integer
    attribute :ACTIVO_COHORTE_ESTUDIANTE, :boolean
    attribute :FECHA_CREACION, :date
    attribute :FECHA_MODIFICACION, :date
  
    # Validaciones
    validates :ID_COHORTE_ESTUDIANTE, presence: true
    validates :ID_F_COHORTE, presence: true
    validates :ID_F_ESTUDIANTE, presence: true
    validates :ACTIVO_COHORTE_ESTUDIANTE, inclusion: { in: [true, false] }
    validates :FECHA_CREACION, presence: true
    validates :FECHA_MODIFICACION, presence: true
  end
  