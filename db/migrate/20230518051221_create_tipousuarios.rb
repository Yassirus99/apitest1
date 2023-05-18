class CreateTipousuarios < ActiveRecord::Migration[7.0]
  def change
    create_table :tipousuarios do |t|
      t.integer :ID_TIPO_USUARIO
      t.string :TIPO_USUARIO
      t.boolean :ACTIVO_TIPO_USUARIO

      t.timestamps
    end
  end
end
