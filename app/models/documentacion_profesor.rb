class DocumentacionProfesor < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'DOCUMENTACION_PROFESOR'
  
    # Definir los atributos del modelo
    attribute :ID_DOCUMENTACION_PROFESOR, :integer
    attribute :ID_F_PROFESOR, :integer
    attribute :ID_F_TIPO_DOCUMENTACION_PROFESOR, :integer
    attribute :DOCUMENTO_PROFESOR, :string
    attribute :FECHA_CREACION_DOCUMENTO, :date
    attribute :FECHA_MODIFICACION_DOCUMENTO, :date
  
    # Validaciones
    validates :ID_DOCUMENTACION_PROFESOR, presence: true
    validates :ID_F_PROFESOR, presence: true
    validates :ID_F_TIPO_DOCUMENTACION_PROFESOR, presence: true
    validates :DOCUMENTO_PROFESOR, presence: true
    validates :FECHA_CREACION_DOCUMENTO, presence: true
    validates :FECHA_MODIFICACION_DOCUMENTO, presence: true
  end
  