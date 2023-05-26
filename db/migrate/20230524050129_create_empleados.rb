class CreateEmpleados < ActiveRecord::Migration[7.0]
  def change
    create_table :empleados do |t|
      t.integer :ID_EMPLEADO
      t.integer :ID_F_CARGO_EMPLEADO
      t.boolean :EMPLEADO_ACTIVO

      t.timestamps
    end
  end
end
