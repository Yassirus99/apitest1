class Empleado < ApplicationRecord
    self.table_name = 'EMPLEADO'
    
    attribute :ID_ESCUELA, :integer
    attribute :NOMBRE_ESCUELA, :string
    
    self.primary_key = "ID_EMPLEADO" 
    belongs_to :cargo_empleado, foreign_key: "ID_F_CARGO_EMPLEADO" 
  


    
  end
  

  