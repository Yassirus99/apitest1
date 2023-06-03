class CargoEmpleado < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'CARGO_EMPLEADO'
  
    # Definir los atributos del modelo
    attribute :ID_CARGO_EMPLEADO, :integer
    attribute :CARGO_EMPLEADO, :string
  
    # Validaciones
    validates :ID_CARGO_EMPLEADO, presence: true
    validates :CARGO_EMPLEADO, presence: true
  end
  