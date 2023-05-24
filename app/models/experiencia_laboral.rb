class ExperienciaLaboral < ApplicationRecord
    self.table_name = 'EXPERIENCIALABORAL'
    self.primary_key = 'ID_EXPERIENCIA_LABORAL'
  
    attribute :ID_EXPERIENCIA_LABORAL, :integer
    attribute :ID_PROFESOR, :integer
    attribute :DESCRIPCION_EXPERIENCIA_LABORAL, :string
    attribute :TITULO_PUESTO_EXPERIENCIA, :string
    attribute :FECHA_INICIO, :date
    attribute :FECHA_FIN, :date
    attribute :URL, :string
  
    validates :ID_EXPERIENCIA_LABORAL, :ID_PROFESOR, presence: true
  
    belongs_to :profesor, foreign_key: 'ID_PROFESOR', class_name: 'Profesor'
  end
  