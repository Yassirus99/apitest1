class CreateExperienciaLaborals < ActiveRecord::Migration[7.0]
  def change
    create_table :experiencia_laborals do |t|
      t.integer :ID_EXPERIENCIA_LABORAL
      t.integer :ID_PROFESOR
      t.text :DESCRIPCION_EXPERIENCIA_LABORAL
      t.string :TITULO_PUESTO_EXPERIENCIA
      t.date :FECHA_INICIO
      t.date :FECHA_FIN
      t.string :URL

      t.timestamps
    end
  end
end
