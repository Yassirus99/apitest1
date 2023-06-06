require_relative 'seed_paises'

Tipousuario.upsert({
  ID_TIPO_USUARIO: 1,
  TIPO_USUARIO: "Usuario",
  ACTIVO_TIPO_USUARIO: true
})

Tipousuario.upsert({
  ID_TIPO_USUARIO: 2,
  TIPO_USUARIO: "Usuario Rol",
  ACTIVO_TIPO_USUARIO: true
})

Tiporecurso.upsert({
  ID_TIPO_RECURSO: 1,
  TIPO_RECURSO: "recurso_1"
});

Tiporecurso.upsert({
  ID_TIPO_RECURSO: 2,
  TIPO_RECURSO: "recurso_2"
});

CargoEmpleado.upsert({
  ID_CARGO_EMPLEADO: 1,
  CARGO_EMPLEADO: "Administrador",
})
CargoEmpleado.upsert({
  ID_CARGO_EMPLEADO: 2,
  CARGO_EMPLEADO: "Docente",
})

# Crear un nuevo empleado
Empleado.upsert({
  ID_EMPLEADO: 1,
  ID_F_CARGO_EMPLEADO: 1,
  EMPLEADO_ACTIVO: true
})


Usuario.upsert({
  ID_USUARIO: 1,
  ID_F_TIPO_USUARIO: 1,
  NOMBRE_USUARIO: "admin",
  CORREO_ELECTRONICO_USUARIO: "admin@gmail.com",
  CONTRASENIA: "123456",
  ACTIVO_USUARIO: true,
  FECHA_CREACION_USUARIO: Time.now,
  FECHA_MODIFICACION_USUARIO: Time.now
})

Usuario.upsert({
  ID_USUARIO: 2,
  ID_F_TIPO_USUARIO: 2,
  NOMBRE_USUARIO: "empleado",
  CORREO_ELECTRONICO_USUARIO: "admin@gmail.com",
  CONTRASENIA: "123456",
  ID_EMPLEADO: 1,
  ACTIVO_USUARIO: true,
  FECHA_CREACION_USUARIO: Time.now,
  FECHA_MODIFICACION_USUARIO: Time.now
})


