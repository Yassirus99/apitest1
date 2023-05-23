class Expedientelaboral < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'Expedientelaboral'
    self.primary_key = 'ID_EXPERIENCIA_LABORAL'
  
    attribute :ID_EXPERIENCIA_LABORAL, :integer
    attribute :ID_PROFESOR, :integer
    attribute :DESCRIPCION_EXPERIENCIA_LABORAL, :string
    attribute :TITULO_PUESTO_EXPERIENCIA, :string
    attribute :FECHA_INICIO, :date
    attribute :FECHA_FIN, :date
    attribute :URL, :string
  
    # Validaciones
    validates :ID_EXPERIENCIA_LABORAL, presence: true
    validates :ID_PROFESOR, presence: true
    validates :DESCRIPCION_EXPERIENCIA_LABORAL, presence: true

  end
  