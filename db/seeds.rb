#Usuario.create({
 #   ID_EMPLEADO: 1,
  #  ID_F_TIPO_USUARIO: 2,
   # ID_F_PROFESOR: 3,
    #NOMBRE_USUARIO: "Peter",
    #CORREO_ELECTRONICO_USUARIO: "usuario@usuario.com",
    #DESCRIPCION_ROL: "Usuario normal",
    #CONTRASENIA: "123",
    #ACTIVO_USUARIO: true,
    #FECHA_CREACION_USUARIO: Time.now,
    #FECHA_MODIFICACION_USUARIO: Time.now
#})

Tipousuario.create({
  ID_TIPO_USUARIO: 1,
  TIPO_USUARIO: "Usuario",
  ACTIVO_TIPO_USUARIO: true
})

Tiporecurso.create({
  ID_TIPO_RECURSO:1,
  TIPO_RECURSO:"USUARIO ROL"

})

# Crear un nuevo empleado
# db/seeds.rb

# Crear un nuevo empleado
# Empleado.create({
#   ID_ESCUELA: 1, 
#   NOMBRE_ESCUELA: "Nombre de la escuela", 
#   ID_F_CARGO_EMPLEADO: 1, 
#   EMPLEADO_ACTIVO: true
# })

# # Guardar el empleado en la base de datos
# empleado.save

# # Agregar más datos si es necesario

# })