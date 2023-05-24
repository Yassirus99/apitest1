class CreateModalidads < ActiveRecord::Migration[7.0]
  def change
    create_table :modalidads do |t|
      t.integer :ID_MODALIDAD
      t.string :MODALIDAD
      t.integer :ACTIVO_MODALIDAD

      t.timestamps
    end
  end
end
