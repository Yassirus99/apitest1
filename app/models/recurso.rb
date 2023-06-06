class Recurso < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'RECURSO'
    self.primary_key = 'ID_RECURSO'

    belongs_to :recurso_padre, foreign_key: 'ID_F_RECURSO_PADRE', primary_key: 'ID_RECURSO', class_name:'Recurso', optional: true
    belongs_to :tipo_recurso, foreign_key: 'ID_F_TIPO_RECURSO', primary_key: 'ID_TIPO_RECURSO', class_name:'Tiporecurso', optional: true
  
    attribute :ID_RECURSO, :integer
    attribute :ID_F_RECURSO_PADRE, :integer
    attribute :ID_F_TIPO_RECURSO, :integer
    attribute :NOMBRE_RECURSO, :string, limit: 20
    attribute :RUTA_RECURSO, :string, limit: 30
    attribute :DESCRIPCION_RECURSO, :string, limit: 200
    attribute :ACTIVO_RECURSO, :boolean
    attribute :FECHA_CREACION, :date
    attribute :FECHA_MODIFICACION, :date
  
    validates :ID_F_RECURSO_PADRE, presence: false
    validates :ID_F_TIPO_RECURSO, presence: true
    validates :NOMBRE_RECURSO, presence: true, length: { maximum: 20 }
    validates :RUTA_RECURSO, presence: true, length: { maximum: 30 }
    validates :DESCRIPCION_RECURSO, presence: false, length: { maximum: 200 }
    validates :ACTIVO_RECURSO, inclusion: { in: [true, false] }
    validates :FECHA_CREACION, presence: true
    validates :FECHA_MODIFICACION, presence: true
end
  