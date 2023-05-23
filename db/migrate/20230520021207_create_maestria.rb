class CreateMaestria < ActiveRecord::Migration[7.0]
  def change
    create_table :maestria do |t|
      t.string :CODIGO_MAESTRIA
      t.integer :ID_ESTADO_MAESTRIA
      t.integer :ID_F_COORDINADOR_ACADEMICO
      t.integer :ID_F_EMPLEADO_CREADOR
      t.integer :ID_F_ESCUELA
      t.string :NOMBRE_MAESTRIA
      t.text :DESCRIPCION

      t.timestamps
    end
  end
end
