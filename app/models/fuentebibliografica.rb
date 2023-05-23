class FUENTEBIBLIOGRAFICA < ApplicationRecord
    self.primary_key = "ID_FUENTE_BIBLIOGRAFICA"
    self.table_name = 'FUENTEBIBLIOGRAFICA'
  
attribute :ID_FUENTE_BIBLIOGRAFICA, :integer
  attribute :DIRECCION_FUENTE, :string
  attribute :NOMBRE_FUENTE, :string
  attribute :AUTOR, : string
  attribute :ANIO_PUBLICACION, :integer


  validates :ID_FUENTE_BIBLIOGRAFICA, presence: true
  validates :ACTIVO_FUENTEBIBLIOGRAFICA, inclusion: { in: [true, false] }

  end