class CreateExpedienteAcademicos < ActiveRecord::Migration[7.0]
  def change
    create_table :expediente_academicos do |t|
      t.integer :ID_EXPEDIENTE_ACADEMICO
      t.integer :ID_EMPLEADO
      t.integer :ID_PROFESOR
      t.integer :ID_F_PROFESOR

      t.timestamps
    end
  end
end
