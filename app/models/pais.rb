class Pais < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'PAIS'
    self.primary_key = 'ID_PAIS'
  
    attribute :ID_PAIS, :integer
    attribute :PAIS, :string
  
    validates :PAIS, presence: true, length: { maximum: 50 }
  end
  