
Usuario.create({
    ID_EMPLEADO: "1",
    ID_F_TIPO_USUARIO: "1",
    ID_F_PROFESOR: "1",
    NOMBRE_USUARIO: "Peter",
    CORREO_ELECTRONICO_USUARIO: "usuario@usuario.com",
    DESCRIPCION_ROL: "Usuario normal",
    CONTRASENIA: "123",
    ACTIVO_USUARIO: true,
    FECHA_CREACION_USUARIO: Time.now,
    FECHA_MODIFICACION_USUARIO: Time.now
})

/
# Crear un nuevo empleado
Empleado.create(
  ID_EMPLEADO: "1",
  ID_F_CARGO_EMPLEADO: "1",
  EMPLEADO_ACTIVO: true
)/

#Tipousuario.upsert({
 # ID_TIPO_USUARIO: 1,
  #TIPO_USUARIO: "Usuario",
  #ACTIVO_TIPO_USUARIO: true
#})

#Tiporecurso.upsert({
 # ID_TIPO_RECURSO: 1,
  #TIPO_RECURSO: "usuario_normal"
#})

#Tiporecurso.upsert({
 # ID_TIPO_RECURSO: 2,
 # TIPO_RECURSO: "usuario_rol"
#})

# Crear un nuevo empleado
# db/seeds.rb


# # Guardar el empleado en la base de datos
# empleado.save

# # Agregar más datos si es necesario

# })