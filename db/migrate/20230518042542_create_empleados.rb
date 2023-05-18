class CreateEmpleados < ActiveRecord::Migration[7.0]
  def change
    create_table :empleados do |t|
      t.integer :ID_ESCUELA
      t.string :NOMBRE_ESCUELA

      t.timestamps
    end
  end
end
