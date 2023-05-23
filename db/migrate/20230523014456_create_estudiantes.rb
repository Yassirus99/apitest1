class CreateEstudiantes < ActiveRecord::Migration[7.0]
  def change
    create_table :estudiantes do |t|
      t.integer :ID_ESTUDIANTE

      t.timestamps
    end
  end
end
