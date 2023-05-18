class CreateRols < ActiveRecord::Migration[7.0]
  def change
    create_table :rols do |t|
      t.primary_key :ID_ROL
      t.integer :ID_F_USUARIO
      t.integer :ID_F_USUARIO_ROL
      t.boolean :ACTIVO_ROL
      t.date :FECHA_CREACION
      t.date :FECHA_MODIFICACION

      t.timestamps
    end
  end
end
