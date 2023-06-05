

class Empleado < ApplicationRecord
    self.table_name = 'EMPLEADO'
    self.primary_key = "ID_EMPLEADO" 

    belongs_to :datospersona, foreign_key: "ID_EMPLEADO", primary_key: "ID_EMPLEADO", optional: true
    belongs_to :cargo_empleado, foreign_key: "ID_F_CARGO_EMPLEADO", primary_key: "ID_CARGO_EMPLEADO", optional: true
    belongs_to :usuario, foreign_key: "ID_EMPLEADO", primary_key: "ID_EMPLEADO", dependent: :destroy

    attribute :ID_EMPLEADO, :integer
    attribute :ID_F_CARGO_EMPLEADO, :integer
    attribute :EMPLEADO_ACTIVO, :boolean
    # belongs_to :cargo_empleado, foreign_key: "ID_F_CARGO_EMPLEADO" 
    
    validates :ID_EMPLEADO, :ID_F_CARGO_EMPLEADO, presence: false
    validates :ID_F_CARGO_EMPLEADO, presence: true
    validates :EMPLEADO_ACTIVO, inclusion: { in: [true, false] }
end
