class Estudiante < ApplicationRecord
    self.primary_key = "ID_ESTUDIANTE"
    self.table_name = 'ESTUDIANTE'
  
    attribute :ID_ESTUDIANTE, :integer
  
    validates :ID_ESTUDIANTE, presence: true
  
  end
  