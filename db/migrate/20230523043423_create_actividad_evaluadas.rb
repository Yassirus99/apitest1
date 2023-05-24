class CreateActividadEvaluadas < ActiveRecord::Migration[7.0]
  def change
    create_table :actividad_evaluadas do |t|
      t.integer :ID_ACTIVIDAD_EVALUADA
      t.integer :ID_F_TIPO_EVALUACION
      t.string :ID_F_ESTADO_APROBACION_ACTIVIDAD
      t.string :integer
      t.integer :PORCENTAJE_EVALUACION
      t.integer :NUMERO_ACTIVIDAD_EVALUADA

      t.timestamps
    end
  end
end
