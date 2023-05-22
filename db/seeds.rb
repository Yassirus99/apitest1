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

Tipousuario.create({
  ID_TIPO_USUARIO: 1,
  TIPO_USUARIO: "Usuario Rol",
  ACTIVO_TIPO_USUARIO: true
})

# Crear un nuevo empleado
# db/seeds.rb

# Crear un nuevo empleado
Empleado.create({
  ID_ESCUELA: 1, 
  NOMBRE_ESCUELA: "Nombre de la escuela", 
  ID_F_CARGO_EMPLEADO: 1, 
  EMPLEADO_ACTIVO: true
})

# # Guardar el empleado en la base de datos
# empleado.save

# # Agregar más datos si es necesario

Estudiante.create({	
	ID_ESTUDIANTE: 1
})

Expedienteacademico.create({
	ID_EXPEDIENTE_ACADEDMICO: 1,
	ID_EMPLEADO: 1,
	ID_PROFESOR: 1,
	ID_F_EMPLEADO: 1,
	ID_F_PROFESOR: 1
})

Experiencialaboral.create({
	ID_EXPERIENCIA_LABORAL: 1, 
	ID_PROFESOR: 1,
	DESCRIPCION_EXPERIENCIA_LABORAL: "coordinador de maestria en X Universidad",
	TITULO_PUESTO_EXPERIENCIA: "Coordinador",
	FECHA_INICIO: Date.new(1990, 1, 1),
	FECHA_FIN: Date.new(1990, 1, 1),
	URL: "url de prueba"
})

Fuentebibliografica.create({
	ID_FUENTE_BIBLIOGRAFICA: 1, 
	DIRECCION_FUENTE: "direccion de la primera fuente",
	NOMBRE_FUENTE: "nombre uno",
	AUTOR: "autor uno",
	ANIO_PUBLICACION: "2000"
})

Gradoacademico.create({
	ID_GRADO_ACADEMICO: 1,
	ID_EXPEDIENTE_ACADEMICO: 1,
	GRADO_ACADEMICO: "Ingeniero",
	DESCRIPCION_GRADO_ACADEMICO: "Ingeniero Civil"
	DOCUMENTO_GRADO_ACADEMICO: longblob,
	ACTIVO_GRADO_ACADEMICO: 1,
	FECHA_CREACION: Date.today,
	FECHA_MODIFICACION: Date.today
})

Maestria.create({
	CODIGO_MAESTRIA: "MFE115",
	ID_EMPLEADO: 1,
	ID_F_COORDINADOR_ACADEMICO: 1,
	ID_F_ESCUELA: 1,
	NOMBRE_MAESTRIA: "nombre maestria uno",
	DESCRIPCION: "descripcion maestria uno"
})

Maestriaasignatura.create({
	ID_MAESTRIA_ASIGNATURA: 1,
	CODIGO_MAESTRIA: "MFE115",
	ID_F_ASIGNATURA: 1,
	ID_F_CICLO: 1,
	ACTIVO_MAESTRIA_ASIGNATURA tinyint(1)
})

Metodologiaensenanza.create({
	ID_METODOLOGIA: 1,
	NOMBRE_METODOLOGIA: "nombre metodologia uno",
	ACTIVO_METODOLOGIA: 1
})

Modalidad.create({
	ID_MODALIDAD: 1,
	MODALIDAD: "modalidad uno",
	ACTIVO_MODALIDAD: 1

})

Municipio.create({
	ID_MUNICIPIO: 1,
	ID_F_DEPARTAMENTO: 1,
	MUNICIPIO: "municipio uno"
})

Observacionesprogramaasignatura.create({
	ID_OBSERVACION_PROGRAMA_ASIGNATURA: 1,	
	OBSERVACION_PROGRAMA_ASIGNATURA: "observacion uno",
	ID_F_PROGRAMA_ASIGNATURA: 1,
	ID_F_ESTADO_OBSERVACION_PROGRAMA_ASIGNATURA: 1,
	ID_F_ESTADO_OBSERVACION_PROGRAMA_ASIGNATURA: 1,
	ID_F_PROGRAMA_ASIGNATURA: 1
})

Observacionesmaestria.create({
	ID_OBSERVACION_MAESTRIA: 1,	
	OBSERVACION_MAESTRIA: "observacion maestria uno",
	ID_F_MAESTRIA: 1,	
	ID_F_ESTADO_OBSERVACION_MAESTRIA: 1,	
	ID_F_ESTADO_OBSERVACION_MAESTRIA: 1,	
	ID_F_MAESTRIA: 1	
})

Observacionplanestudio.create({
	ID_OBSERVACION_PLAN_ESTUDIO: 1,
	ID_F_ESTADO_OBSERVACION_PLAN_ESTUDIO: 1,
	OBSERVACION_PLAN_ESTUDIO: "observacion plan de estudios uno",
	ID_F_PLAN_ESTUDIOS: 1,
	ID_F_ESTADO_OBSERVACION_PLAN_ESTUDIO: 1,
	ID_F_PLAN_ESTUDIOS: 1
})

Ofertacontratacion.create({
	ID_OFERTA_CONTRATACION: 1,
	ID_COHORTE: 1,
	ID_MAESTRIA_ASIGNATURA: 1,
	ID_F_MAESTRIA_ASIGNATURA: 1,
	ID_F_COHORTE: 1,
	ID_F_ESTADO_OFERTA: 1,
	FECHA_INICIO_OFERTA: Date.today,
	FECHA_FIN_OFERTA: Date.new(1990, 1, 1),
	ID_COHORTE: 1,
	ID_MAESTRIA_ASIGNATURA: 1
})

Pais.create({
	ID_PAIS: 1,
	PAIS: "pais uno"
})

Perfilaspirante.ccreate({
	ID_PERFIL_ASPIRANTE: 1,
	CODIGO_MAESTRIA: "MFE115",
	FECHA_CREACION: Date.today, 
	FECHA_MODIFICACION: Date.today 
})

Permiso.create({
	ID_PERMISO: 1,
	ID_F_ROL_USUARIO: 1,
	ID_F_RECURSO: 1,
	ACTIVO_PERMISO: 1,
	FECHA_CREACION: Date.today,
	FECHA_MODIFICACION: Date.today 
})

Planestudios.create({
	ID_PLAN_ESTUDIO: 1,
	ID_MODALIDAD: 1,
	CODIGO_MAESTRIA: "MFE115",
	ID_F_MODALIDAD: 1,
	ID_F_ESTADO_PLAN_ESTUDIO: 1,
	ID_F_EMPLEADO_CREACION: 1, 
	CUM_MINIMO : 7.5,
	NUMERO_ASIGNATURAS: 8,
	DURACION_CARRERA_ANIO: 2,
	DURACION_CARRERA_CICLOS: 4,
	NOMBRE_TITULO_CARRERA: "nombre titulo Maestria uno",
	FECHA_CREACION_PLAN: Date.today,
	FECHA_MODIFICACION_PLAN: Date.today
})

Profesor.create({
	ID_PROFESOR: 1,
	ID_F_TIPO_PROFESOR: 1
})

Programaasignatura.create({
	ID_PROGRAMA_ASIGNATURA: 1,
	ID_F_ASIGNATURA: 1,
	ACTIVO_PROGRAMA_ASIGNATURA: 1,
	NUM_HORAS_PRACTICAS_SEMANA: 4,
	NUM_HORAS_TEORICAS_SEMANA: 10,
	DURACION_SEMANAS: 10,
	INTRODUCCION: "introduccion programa asignatura uno",
	DESCRIPCION: "descripcion programa asignatura uno",
	OBJETIVOS: "objetivos programa asignatura uno",
	METODOLOGIA_DESCRIPCION: "descripcion de metodologia",
})

Programametodologia.create({
	ID_PROGRAMA_METODOLOGIA: 1,
	ID_F_PROGRAMA_ASIGNATURA: 1,
	ID_F_METODOLOGIA: 1,
	ACTIVO_PROGRAMA_METODOLOGIA: 1
})

Recurso.create({
	ID_RECURSO: 1,
	ID_F_RECURSO_PADRE: 1, 
	ID_F_TIPO_RECURSO: 1,
	NOMBRE_RECURSO: "nombre recurso uno", 
	RUTA_RECURSO: "ruta recurso uno", 
	DESCRIPCION_RECURSO: "descripcion recurso uno",
	ACTIVO_RECURSO: 1,
	FECHA_CREACION: Date.today,
	FECHA_MODIFICACION: Date.today
})

Requisitos.create({
	ID_REQUISITO: 1, 
	ID_F_ASIGNATURA: 1,  
	ID_F_ASIGNATURA_REQUISITO: 1, 
	ACTIVO_REQUISITO_ASIGNATURA: 1
})

Requisitosaspirante.create({
	ID_REQUISITO_PERFIL_ASPIRANTE: 1, 
	REQUISITO_PERFIL_ASPIRANTE: "requisito de perfil aspirante", 
	DESCRIPCION: "descripcion de requisito uno",
	ACTIVO_REQUISITO_ASPIRANTE: 1
})

Rol.create({
	ID_ROL int: 1, 
	ID_F_USUARIO: 1, 
	ID_F_USUARIO_ROL: 1, 
	ACTIVO_ROL: 1, 
	FECHA_CREACION: Date.today,
	FECHA_MODIFICACION: Date.today
})

Sistemaevaluacion.create({
	ID_SISTEMA_EVALUACION: 1,
	ID_F_PROGRAMA_ASIGNATURA: 1,
	ACTIVO_SISTEMA_EVALUACION: 1,
	FECHA_CREACION: Date.today,
	FECHA_MODIFICACION: Date.today
})

Tipodoccummentacionprofesor.create({
	ID_TIPO_DOCUMENTACION_PROFESOR: 1,
	TIPO_DOCUMENTACION_PROFESOR: "tipo de documentacion"
})

Tipoevaluacion.create({
	ID_TIPO_EVALUACION: 1,
	TIPO_EVALUACION: "tipo de evaluacion uno",
	ACTIVO_TIPO_EVALUACION: 1
})

Tipoprofesor.create({
	ID_TIPO_PROFESOR: 1,
	TIPO_PROFESOR: "tipo de profesor uno",
	ACTIVO_TIPO_PROFESOR: 1
})

