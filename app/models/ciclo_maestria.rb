<<<<<<< HEAD
class CicloMaestria < ApplicationRecord
    # Nombre de la tabla en la base de datos
    self.table_name = 'CICLO_MAESTRIA'
  
    # Definir los atributos del modelo
    attribute :ID_CICLO_ASIGNATURA, :integer
    attribute :CODIGO_MAESTRIA, :string
    attribute :ID_F_CICLO, :integer
=======
class Ciclomaestria < ApplicationRecord
    self.table_name = 'CICLOMAESTRIA'
  
    attribute :ID_CICLO_ASIGNATURA, :integer
    attribute :CODIGO_MAESTRIA, :string
  
    # Asociaciones
    belongs_to :maestria, foreign_key: 'CODIGO_MAESTRIA'
>>>>>>> e15b0155fcfd0359ee4a220d4a63e3f4b9c8280a
  
    # Validaciones
    validates :ID_CICLO_ASIGNATURA, presence: true
    validates :CODIGO_MAESTRIA, presence: true
<<<<<<< HEAD
    validates :ID_F_CICLO, presence: true
=======
>>>>>>> e15b0155fcfd0359ee4a220d4a63e3f4b9c8280a
  end
  