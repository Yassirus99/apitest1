

class Empleado < ApplicationRecord
    self.table_name = 'EMPLEADO'
    self.primary_key = "ID_EMPLEADO" 
    attribute :ID_EMPLEADO, :integer
    attribute :ID_F_CARGO_EMPLEADO, :integer
    attribute :EMPLEADO_ACTIVO, :boolean
    # belongs_to :cargo_empleado, foreign_key: "ID_F_CARGO_EMPLEADO" 
    
    validates :ID_EMPLEADO, :ID_F_CARGO_EMPLEADO, presence: false
    validates :ID_F_CARGO_EMPLEADO, presence: true
    validates :EMPLEADO_ACTIVO, inclusion: { in: [true, false] }
end
