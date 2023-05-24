# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_05_23_024229) do
  create_table "ACTIVIDADEVALUADA", primary_key: "ID_ACTIVIDAD_EVALUADA", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "ID_SISTEMA_EVALUACION"
    t.integer "ID_F_TIPO_EVALUACION", null: false
    t.integer "ID_F_ESTADO_APROBACION_ACTIVIDAD"
    t.decimal "PORCENTAJE_EVALUACION", precision: 10, scale: 2, null: false
    t.integer "NUMERO_ACTIVIDAD_EVALUADA"
    t.index ["ID_F_ESTADO_APROBACION_ACTIVIDAD"], name: "FK_FK_ESTADO_APROBACION_ACTIVIDAD_EVALUADA"
    t.index ["ID_F_TIPO_EVALUACION"], name: "FK_FK_TIPO_EVALUACION"
    t.index ["ID_SISTEMA_EVALUACION"], name: "FK_CONTIENE"
  end

  create_table "APLICACIONOFERTAASPIRANTE", primary_key: "ID_COHORTE_ASPIRANTE_PROFESOR", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "ID_OFERTA_CONTRATACION"
    t.integer "ID_F_ESTADO_CONTRATACION_ASPIRANTE"
    t.integer "ID_F_ASPIRANTE_PROFESOR", null: false
    t.boolean "ACTIVO_COHORTE_ASPIRANTE"
    t.index ["ID_F_ASPIRANTE_PROFESOR"], name: "FK_ASPIRANTE_PROFESOR_COHORTE"
    t.index ["ID_F_ESTADO_CONTRATACION_ASPIRANTE"], name: "FK_FK_ESTADO_CONTRATACION_COHORTE_ASPIRANTE"
    t.index ["ID_OFERTA_CONTRATACION"], name: "FK_FK_OFERTA_CONTRATACION_APLICACION_OFERTA"
  end

  create_table "AREACONOCIMIENTO", primary_key: "ID_AREA_CONOCIMIENTO", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "AREA_CONOCIMIENTO", limit: 15, null: false
  end

  create_table "ASIGNATURA", primary_key: "ID_ASIGNATURA", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "CODIGO_ASIGNATURA", limit: 5, null: false
    t.string "NOMBRE_ASIGNATURA", limit: 15, null: false
    t.integer "NUMERO_CORRELATIVO", null: false
    t.integer "UNIDADES_VALORATIVAS"
  end

  create_table "ASPIRANTEREQUISITOS", primary_key: "ID_PERFIL_ASPIRANTE_REQUISITO", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "ID_F_PERFIL_ASPIRANTE", null: false
    t.integer "ID_F_REQUISITO_ASPIRANTE", null: false
    t.boolean "ACTIVO_ASPIRANTE_REQUISITO", null: false
    t.index ["ID_F_PERFIL_ASPIRANTE"], name: "FK_FK_PERFIL_ASPIRANTE_REQUISITO"
    t.index ["ID_F_REQUISITO_ASPIRANTE"], name: "FK_FK_REQUISITO_PERFIL_ASPIRANTE"
  end

  create_table "BIBLIOGRAFIAPROGRAMA", primary_key: "ID_BIBLIOGRAFIA_PROGRAMA", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "ID_F_PROGRAMA_ASIGNATURA", null: false
    t.integer "ID_F_FUENTE_BIBLIOGRAFICA", null: false
    t.boolean "ACTIVO_BIBLIOGRAFIA_PROGRAMA"
    t.index ["ID_F_FUENTE_BIBLIOGRAFICA"], name: "FK_FUENTE_BIBLIOGRAFIA_PROGRAMA"
    t.index ["ID_F_PROGRAMA_ASIGNATURA"], name: "FK_PROGRAMA_BIBLIOGRAFIA"
  end

  create_table "CARGOEMPLEADO", primary_key: "ID_CARGO_EMPLEADO", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "CARGO_EMPLEADO", limit: 15
  end

  create_table "CICLO", primary_key: "ID_CICLO", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "NUMERO_CICLO", limit: 5
  end

  create_table "CICLOMAESTRIA", primary_key: "ID_CICLO_ASIGNATURA", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "CODIGO_MAESTRIA", limit: 7
    t.integer "ID_F_CICLO", null: false
    t.index ["CODIGO_MAESTRIA"], name: "FK_FK_MAESTRIA_CICLO"
    t.index ["ID_F_CICLO"], name: "FK_FK_CICLO_MAESTRIA"
  end

  create_table "COHORTE", primary_key: "ID_COHORTE", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "CODIGO_MAESTRIA", limit: 7
    t.integer "ANIO_PROMEDIO_INGRESO"
    t.integer "ANIO_PROMEDIO_TITULACION"
    t.index ["CODIGO_MAESTRIA"], name: "FK_ES_LLEVADA_POR"
  end

  create_table "COHORTE_ESTUDIANTE", primary_key: "ID_COHORTE_ESTUDIANTE", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "ID_F_COHORTE", null: false
    t.integer "ID_F_ESTUDIANTE", null: false
    t.boolean "ACTIVO_COHORTE_ESTUDIANTE", null: false
    t.date "FECHA_CREACION"
    t.date "FECHA_MODIFICACION"
    t.index ["ID_F_COHORTE"], name: "FK_COHORTE_ESTUDIANTES"
    t.index ["ID_F_ESTUDIANTE"], name: "FK_ESTUDIANTES_COHORTE"
  end

  create_table "DATOSPERSONA", primary_key: "ID_PERSONA", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "ID_EMPLEADO"
    t.integer "ID_F_PROFESOR"
    t.integer "ID_F_PAIS_NACIONALIDAD", null: false
    t.integer "ID_F_DEPARTAMENTO_RESIDENCIA"
    t.integer "ID_F_MUNICIPIO_RESIDENCIA"
    t.string "PRIMER_NOMBRE", limit: 10, null: false
    t.string "SEGUNDO_NOMBRE", limit: 10
    t.string "TERCER_NOMBRE", limit: 10
    t.string "PRIMER_APELLIDO", limit: 10, null: false
    t.string "SEGUNDO_APELLIDO", limit: 10
    t.string "DIRECCION_RESIDENCIA", limit: 100, null: false
    t.date "FECHA_NACIMIENTO", null: false
    t.string "CORREO_ELECTRONICO", limit: 50, null: false
    t.string "CORREO_ELECTRONICO_INSTITUCIONAL", limit: 50
    t.string "DUI", limit: 9
    t.string "NIT", limit: 14
    t.string "NUP", limit: 20
    t.string "NUMERO_PASAPORTE", limit: 20
    t.string "DOCUMENTO_PERSONAL", limit: 20
    t.string "TELEFONO_MOVIL", limit: 8
    t.string "TELEFONO_OFICINA", limit: 8
    t.index ["ID_EMPLEADO"], name: "FK_FK_EMPLEADO_DATOS_PERSONA"
    t.index ["ID_F_DEPARTAMENTO_RESIDENCIA"], name: "FK_FK_DEPARTAMENTO_DATOS_PERSONA"
    t.index ["ID_F_MUNICIPIO_RESIDENCIA"], name: "FK_FK_MUNICIPIO_DATOS_PERSONA"
    t.index ["ID_F_PAIS_NACIONALIDAD"], name: "FK_FK_NACIONALIDAD_DATOS_PERSONA"
    t.index ["ID_F_PROFESOR"], name: "FK_FK_DATOS_PERSONALES_PROFESOR"
  end

  create_table "DEPARTAMENTO", primary_key: "ID_DEPARTAMENTO", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "DEPARTAMENTO", limit: 15, null: false
  end

  create_table "DETALLECONTRATACION", primary_key: "ID_DETALLE_CONTRATACION", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "ID_COHORTE_ASPIRANTE_PROFESOR"
    t.decimal "MONTO_PAGO_HORA", precision: 10, scale: 2, null: false
    t.date "FECHA_CONTRATACION", null: false
    t.index ["ID_COHORTE_ASPIRANTE_PROFESOR"], name: "FK_FK_DETALLE_CONTRATACION_COHORTE_ASPIRANTE_PROFESOR"
  end

  create_table "DOCUMENTACIONPROFESOR", primary_key: "ID_DOCUMENTACION_PROFESOR", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "ID_F_PROFESOR", null: false
    t.integer "ID_F_TIPO_DOCUMENTACION_PROFESOR", null: false
    t.binary "DOCUMENTO_PROFESOR", size: :long, null: false
    t.date "FECHA_CREACION_DOCUMENTO", null: false
    t.date "FECHA_MODIFICACION_DOCUMENTO"
    t.index ["ID_F_PROFESOR"], name: "FK_FK_PROFESOR_DOCUMENTACION_PROFESOR"
    t.index ["ID_F_TIPO_DOCUMENTACION_PROFESOR"], name: "FK_FK_TIPO_DOCUMENTACION_PROFESOR"
  end

  create_table "EMPLEADO", primary_key: "ID_EMPLEADO", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "ID_F_CARGO_EMPLEADO", null: false
    t.boolean "EMPLEADO_ACTIVO", null: false
    t.index ["ID_F_CARGO_EMPLEADO"], name: "FK_FK_CARGO_EMPLEADO"
  end

  create_table "ESCUELA", primary_key: "ID_ESCUELA", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "NOMBRE_ESCUELA", limit: 20, null: false
  end

  create_table "ESTADOAPROBACCIONACTIVIDAD", primary_key: "ID_ESTADO_APROBACION_ACTIVIDAD", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "ESTADO_APROBACION_ACTIVIDAD", limit: 15, null: false
  end

  create_table "ESTADOCONTRATACIONASPIRANTE", primary_key: "ID_ESTADO_CONTRATACION_ASPIRANTE", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "ESTADO_CONTRATACION_ASPIRANTE", limit: 20, null: false
    t.boolean "ACTIVO_ESTADO_CONTRATACION"
  end

  create_table "ESTADOMAESTRIA", primary_key: "ID_ESTADO_MAESTRIA", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "ESTADO_MAESTRIA", limit: 20
  end

  create_table "ESTADOOBSERVACIONMAESTRIA", primary_key: "ID_ESTADO_OBSERVACION_MAESTRIA", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "ESTADO_OBSERVACION_MAESTRIA", limit: 20
  end

  create_table "ESTADOOBSERVACIONPLANESTUDIO", primary_key: "ID_ESTADO_OBSERVACION_PLAN_ESTUDIO", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "ESTADO_OBSERVACION_PLAN_ESTUDIO", limit: 20, null: false
  end

  create_table "ESTADOOBSERVACIONPROGRAMAASIGNATURA", primary_key: "ID_ESTADO_OBSERVACION_PROGRAMA_ASIGNATURA", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "ESTADO_OBSERVACION_PRGRAMA_ASIGNATURA", limit: 20, null: false
  end

  create_table "ESTADOOFERTACONTRATACION", primary_key: "ID_ESTADO_OFERTA_CONTRACACION", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "ESTADO_OFERTA_CONTRATACION", limit: 30
  end

  create_table "ESTADOPLANESTUDIO", primary_key: "ID_ESTADO_PLAN_ESTUDIO", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "ESTADO_PLAN_ESTUDIO", limit: 20, null: false
    t.string "DESCRIPCION_ESTADO_PLAN_ESTUDIO", limit: 150, null: false
  end

  create_table "ESTADOPROGRAMAASIGNATURA", primary_key: "ID_ESTADO_PROGRAMA_ASIGNATURA", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "ESTADO_PROGRAMA_ASIGNATURA", limit: 20, null: false
  end

  create_table "ESTUDIANTE", primary_key: "ID_ESTUDIANTE", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
  end

  create_table "EXPEDIENTEACADEMICO", primary_key: "ID_EXPEDIENTE_ACADEMICO", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "ID_EMPLEADO"
    t.integer "ID_PROFESOR"
    t.integer "ID_F_PROFESOR"
    t.index ["ID_EMPLEADO"], name: "FK_FK_EMPLEADO_EXPEDIENTE_ACADEMICO"
    t.index ["ID_PROFESOR"], name: "FK_FK_PROFESOR_ASPIRANTE_EXPEDIENTE"
  end

  create_table "EXPERIENCIALABORAL", primary_key: "ID_EXPERIENCIA_LABORAL", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "ID_PROFESOR"
    t.string "DESCRIPCION_EXPERIENCIA_LABORAL", limit: 500
    t.string "TITULO_PUESTO_EXPERIENCIA", limit: 30
    t.date "FECHA_INICIO"
    t.date "FECHA_FIN"
    t.string "URL", limit: 100
    t.index ["ID_PROFESOR"], name: "FK_FK_EXPERIENCIA_LABORAL_PROFESOR"
  end

  create_table "FUENTEBIBLIOGRAFICA", primary_key: "ID_FUENTE_BIBLIOGRAFICA", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "DIRECCION_FUENTE", limit: 100
    t.string "NOMBRE_FUENTE", limit: 50
    t.string "AUTOR", limit: 30
    t.integer "ANIO_PUBLICACION"
  end

  create_table "GRADOACADEMICO", primary_key: "ID_GRADO_ACADEMICO", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "ID_EXPEDIENTE_ACADEMICO"
    t.string "GRADO_ACADEMICO", limit: 20, null: false
    t.string "DESCRIPCION_GRADO_ACADEMICO", limit: 150, null: false
    t.binary "DOCUMENTO_GRADO_ACADEMICO", size: :long
    t.boolean "ACTIVO_GRADO_ACADEMICO", null: false
    t.date "FECHA_CREACION", null: false
    t.date "FECHA_MODIFICACION", null: false
    t.index ["ID_EXPEDIENTE_ACADEMICO"], name: "FK_FK_EXPEDIENTE_GRADO_ACADEMICO"
  end

  create_table "MAESTRIA", primary_key: "CODIGO_MAESTRIA", id: { type: :string, limit: 7 }, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "ID_ESTADO_MAESTRIA"
    t.integer "ID_F_COORDINADOR_ACADEMICO"
    t.integer "ID_F_EMPLEADO_CREADOR", null: false
    t.integer "ID_F_ESCUELA"
    t.string "NOMBRE_MAESTRIA", limit: 20
    t.string "DESCRIPCION", limit: 150
    t.index ["ID_ESTADO_MAESTRIA"], name: "FK_FK_ESTADO_MAESTRIA"
    t.index ["ID_F_COORDINADOR_ACADEMICO"], name: "FK_FK_COOORDINADOR_MAESTRIA"
    t.index ["ID_F_EMPLEADO_CREADOR"], name: "FK_FK_EMPLEADO_MAESTRIA"
    t.index ["ID_F_ESCUELA"], name: "FK_FK_ESCUELA_MAESTRIA"
  end

  create_table "MAESTRIAASIGNATURA", primary_key: "ID_MAESTRIA_ASIGNATURA", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "CODIGO_MAESTRIA", limit: 7
    t.integer "ID_AREA_CONOCIMIENTO"
    t.integer "ID_F_ASIGNATURA", null: false
    t.integer "ID_F_AREA_CONOCIMIENTO", null: false
    t.integer "ID_F_CICLO", null: false
    t.boolean "ACTIVO_MAESTRIA_ASIGNATURA", null: false
    t.datetime "FECHA_CREACION_MAESTRIA_ASIGNATURA", precision: nil
    t.datetime "FECHA_MODIFICACION_MAESTRIA_ASIGNATURA", precision: nil
    t.index ["CODIGO_MAESTRIA"], name: "FK_FK_MAESTRIA_ASIGNATURA"
    t.index ["ID_AREA_CONOCIMIENTO"], name: "FK_FK_AREA_CONOCIMIENTO_MAESTRIA_ASIGNATURA"
    t.index ["ID_F_ASIGNATURA"], name: "FK_FK_ASIGNATURA_MAESTRIA"
    t.index ["ID_F_CICLO"], name: "FK_FK_CICLO_MAESTRIA_ASIGNATURA"
  end

  create_table "METODOLOGIAENSENANZA", primary_key: "ID_METODOLOGIA", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "NOMBRE_METODOLOGIA", limit: 15, null: false
    t.boolean "ACTIVO_METODOLOGIA", null: false
  end

  create_table "MODALIDAD", primary_key: "ID_MODALIDAD", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "MODALIDAD", limit: 15, null: false
    t.boolean "ACTIVO_MODALIDAD", null: false
  end

  create_table "MUNICIPIO", primary_key: "ID_MUNICIPIO", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "ID_F_DEPARTAMENTO", null: false
    t.string "MUNICIPIO", limit: 15, null: false
    t.index ["ID_F_DEPARTAMENTO"], name: "FK_FK_DEPARTAMENTO_MUNICIPIO"
  end

  create_table "OBSERVACIONESPROGRAMAASIGNATURA", primary_key: "ID_OBSERVACION_PROGRAMA_ASIGNATURA", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "OBSERVACION_PROGRAMA_ASIGNATURA", limit: 200, null: false
    t.integer "ID_F_PROGRAMA_ASIGNATURA", null: false
    t.integer "ID_F_ESTADO_OBSERVACION_PROGRAMA_ASIGNATURA", null: false
    t.index ["ID_F_ESTADO_OBSERVACION_PROGRAMA_ASIGNATURA"], name: "FK_FK_ESTADO_OBSERVACION_PROGRAMA_ASIGNATURA"
    t.index ["ID_F_PROGRAMA_ASIGNATURA"], name: "FK_FK_PROGRAMA_ASIGNATURA_OBSERVACION_PROGRAMA"
  end

  create_table "OBSERVACIONMAESTRIA", primary_key: "ID_OBSERVACION_MAESTRIA", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "OBSERVACION_MAESTRIA", limit: 20, null: false
    t.string "ID_F_MAESTRIA", limit: 7, null: false
    t.integer "ID_F_ESTADO_OBSERVACION_MAESTRIA", null: false
    t.index ["ID_F_ESTADO_OBSERVACION_MAESTRIA"], name: "FK_FK_ESTADO_OBSERVACION_MAESTRIA"
    t.index ["ID_F_MAESTRIA"], name: "FK_FK_OBSERVACION_MAESTRIA"
  end

  create_table "OBSERVACIONPLANESTUDIO", primary_key: "ID_OBSERVACION_PLAN_ESTUDIO", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "ID_F_ESTADO_OBSERVACION_PLAN_ESTUDIO", null: false
    t.string "OBSERVACION_PLAN_ESTUDIO", limit: 20, null: false
    t.integer "ID_F_PLAN_ESTUDIOS"
    t.index ["ID_F_ESTADO_OBSERVACION_PLAN_ESTUDIO"], name: "FK_FK_ESTADO_OBSERVACION_PLAN_ESTUDIO"
    t.index ["ID_F_PLAN_ESTUDIOS"], name: "FK_FK_PLAN_ESTUDIOS_OBSERVACION"
  end

  create_table "OFERTACONTRATACION", primary_key: "ID_OFERTA_CONTRATACION", id: :integer, default: nil, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "ID_COHORTE"
    t.integer "ID_MAESTRIA_ASIGNATURA"
    t.integer "ID_F_MAESTRIA_ASIGNATURA", null: false
    t.integer "ID_F_COHORTE", null: false
    t.integer "ID_F_ESTADO_OFERTA", null: false
    t.datetime "FECHA_INICIO_OFERTA", precision: nil, null: false
    t.datetime "FECHA_FIN_OFERTA", precision: nil, null: false
    t.index ["ID_COHORTE"], name: "FK_FK_COHORTE_OFERTA_CONTRATACION"
    t.index ["ID_MAESTRIA_ASIGNATURA"], name: "FK_FK_MAESTRIA_ASIGNATURA_OFERTA_CONTRATACION"
  end

  create_table "PAIS", primary_key: "ID_PAIS", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "PAIS", limit: 50, null: false
  end

  create_table "PERFILASPIRANTE", primary_key: "ID_PERFIL_ASPIRANTE", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "CODIGO_MAESTRIA", limit: 7
    t.date "FECHA_CREACION"
    t.date "FECHA_MODIFICACION"
    t.index ["CODIGO_MAESTRIA"], name: "FK_FK_MAESTRIA_PERFIL_ASPIRANTE"
  end

  create_table "PERMISO", primary_key: "ID_PERMISO", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "ID_F_ROL_USUARIO", null: false
    t.integer "ID_F_RECURSO", null: false
    t.boolean "ACTIVO_PERMISO", null: false
    t.date "FECHA_CREACION", null: false
    t.date "FECHA_MODIFICACION", null: false
    t.index ["ID_F_RECURSO"], name: "FK_FK_RECURSO_PERMISO"
    t.index ["ID_F_ROL_USUARIO"], name: "FK_FK_ROL_USUARIO_PERMISO"
  end

  create_table "PLANESTUDIOS", primary_key: "ID_PLAN_ESTUDIO", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "CODIGO_MAESTRIA", limit: 7
    t.integer "ID_MODALIDAD"
    t.integer "ID_F_MODALIDAD", null: false
    t.integer "ID_F_ESTADO_PLAN_ESTUDIO", null: false
    t.integer "ID_F_EMPLEADO_CREACION", null: false
    t.decimal "CUM_MINIMO", precision: 10, scale: 2, null: false
    t.integer "NUMERO_ASIGNATURAS", null: false
    t.integer "DURACION_CARRERA_ANIO", null: false
    t.integer "DURACION_CARRERA_CICLOS"
    t.string "NOMBRE_TITULO_CARRERA", limit: 50, null: false
    t.datetime "FECHA_CREACION_PLAN", precision: nil, null: false
    t.datetime "FECHA_MODIFICACION_PLAN", precision: nil, null: false
    t.index ["CODIGO_MAESTRIA"], name: "FK_FK_PLAN_ESTUDIO_MAESTRIA"
    t.index ["ID_F_EMPLEADO_CREACION"], name: "FK_FK_EMPLEADO_PLAN_ESTUDIOS"
    t.index ["ID_F_ESTADO_PLAN_ESTUDIO"], name: "FK_FK_ESTADO_PLAN_ESTUDIO"
    t.index ["ID_MODALIDAD"], name: "FK_DEFINE_MODALIDAD"
  end

  create_table "PROFESOR", primary_key: "ID_PROFESOR", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "ID_F_TIPO_PROFESOR", null: false
    t.index ["ID_F_TIPO_PROFESOR"], name: "FK_FK_TIPO_PROFESOR"
  end

  create_table "PROGRAMAASIGNATURA", primary_key: "ID_PROGRAMA_ASIGNATURA", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "ID_F_ASIGNATURA", null: false
    t.integer "ID_F_ESTADO_PROGRAMA_ASIGNATURA", null: false
    t.integer "ID_F_EMPLEADO_CREADOR"
    t.boolean "ACTIVO_PROGRAMA_ASIGNATURA", null: false
    t.integer "NUM_HORAS_PRACTICAS_SEMANA", null: false
    t.integer "NUM_HORAS_TEORICAS_SEMANA", null: false
    t.integer "DURACION_SEMANAS", null: false
    t.string "INTRODUCCION", limit: 250
    t.string "DESCRIPCION", limit: 150
    t.text "OBJETIVOS"
    t.string "METODOLOGIA_DESCRIPCION", limit: 150
    t.index ["ID_F_ASIGNATURA"], name: "FK_PROGRAMA"
    t.index ["ID_F_EMPLEADO_CREADOR"], name: "FK_FK_EMPLEADO_PROGRAMA_ASIGNATURA"
    t.index ["ID_F_ESTADO_PROGRAMA_ASIGNATURA"], name: "FK_FK_ESTADO_PROGRAMA_ASIGNATURA"
  end

  create_table "PROGRAMAMETODOLOGIA", primary_key: "ID_PROGRAMA_METODOLOGIA", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "ID_F_PROGRAMA_ASIGNATURA", null: false
    t.integer "ID_F_METODOLOGIA", null: false
    t.boolean "ACTIVO_PROGRAMA_METODOLOGIA", null: false
    t.index ["ID_F_METODOLOGIA"], name: "FK_METODOLOGIA_PROGRAMA"
    t.index ["ID_F_PROGRAMA_ASIGNATURA"], name: "FK_PROGRAMA_METODOLOGIA"
  end

  create_table "RECURSO", primary_key: "ID_RECURSO", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "ID_F_RECURSO_PADRE"
    t.integer "ID_F_TIPO_RECURSO", null: false
    t.string "NOMBRE_RECURSO", limit: 20, null: false
    t.string "RUTA_RECURSO", limit: 30, null: false
    t.string "DESCRIPCION_RECURSO", limit: 200
    t.boolean "ACTIVO_RECURSO", null: false
    t.date "FECHA_CREACION", null: false
    t.date "FECHA_MODIFICACION", null: false
    t.index ["ID_F_RECURSO_PADRE"], name: "FK_FK_RECURSO_PADRE"
    t.index ["ID_F_TIPO_RECURSO"], name: "FK_FK_TIPO_RECURSO"
  end

  create_table "REQUISITOS", primary_key: "ID_REQUISITO", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "ID_MAESTRIA_ASIGNATURA"
    t.integer "MAE_ID_MAESTRIA_ASIGNATURA"
    t.integer "ID_F_ASIGNATURA", null: false
    t.integer "ID_F_ASIGNATURA_REQUISITO", null: false
    t.boolean "ACTIVO_REQUISITO_ASIGNATURA", null: false
    t.index ["ID_MAESTRIA_ASIGNATURA"], name: "FK_FK_MAESTRIA_ASIGNATURA_BASE"
    t.index ["MAE_ID_MAESTRIA_ASIGNATURA"], name: "FK_FK_MAESTRIA_ASIGNATURA_REQUISITO"
  end

  create_table "REQUISITOSASPIRANTE", primary_key: "ID_REQUISITO_PERFIL_ASPIRANTE", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "REQUISITO_PERFIL_ASPIRANTE", limit: 20, null: false
    t.string "DESCRIPCION", limit: 150, null: false
    t.boolean "ACTIVO_REQUISITO_ASPIRANTE", null: false
  end

  create_table "ROL", primary_key: "ID_ROL", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "ID_F_USUARIO"
    t.integer "ID_F_USUARIO_ROL", null: false
    t.boolean "ACTIVO_ROL", null: false
    t.date "FECHA_CREACION", null: false
    t.date "FECHA_MODIFICACION", null: false
    t.index ["ID_F_USUARIO"], name: "FK_FK_USUARIO"
    t.index ["ID_F_USUARIO_ROL"], name: "FK_FK_USUARIO_ROL"
  end

  create_table "SISTEMAEVALUACION", primary_key: "ID_SISTEMA_EVALUACION", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "ID_F_PROGRAMA_ASIGNATURA", null: false
    t.boolean "ACTIVO_SISTEMA_EVALUACION", null: false
    t.date "FECHA_CREACION", null: false
    t.date "FECHA_MODIFICACION"
    t.index ["ID_F_PROGRAMA_ASIGNATURA"], name: "FK_FK_SISTEMA_EVALUACION_PROGRAMA_ASIGNATURA"
  end

  create_table "TIPODOCUMENTACIONPROFESOR", primary_key: "ID_TIPO_DOCUMENTACION_PROFESOR", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "TIPO_DOCUMENTACION_PROFESOR", limit: 20, null: false
  end

  create_table "TIPOEVALUACION", primary_key: "ID_TIPO_EVALUACION", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "TIPO_EVALUACION", limit: 15, null: false
    t.boolean "ACTIVO_TIPO_EVALUACION", null: false
  end

  create_table "TIPOPROFESOR", primary_key: "ID_TIPO_PROFESOR", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "TIPO_PROFESOR", limit: 15, null: false
    t.boolean "ACTIVO_TIPO_PROFESOR", null: false
  end

  create_table "TIPORECURSO", primary_key: "ID_TIPO_RECURSO", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "TIPO_RECURSO", limit: 20, null: false
  end

  create_table "TIPOUSUARIO", primary_key: "ID_TIPO_USUARIO", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "TIPO_USUARIO", limit: 20, null: false
    t.boolean "ACTIVO_TIPO_USUARIO", null: false
  end

  create_table "USUARIO", primary_key: "ID_USUARIO", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "ID_EMPLEADO"
    t.integer "ID_F_TIPO_USUARIO", null: false
    t.integer "ID_F_PROFESOR"
    t.string "NOMBRE_USUARIO", limit: 20, null: false
    t.string "CORREO_ELECTRONICO_USUARIO", limit: 60
    t.string "DESCRIPCION_ROL", limit: 100
    t.string "CONTRASENIA", limit: 150, null: false
    t.boolean "ACTIVO_USUARIO", null: false
    t.datetime "FECHA_CREACION_USUARIO", precision: nil, null: false
    t.datetime "FECHA_MODIFICACION_USUARIO", precision: nil, null: false
    t.index ["ID_EMPLEADO"], name: "FK_FK_EMPLEADO_USUARIO"
    t.index ["ID_F_PROFESOR"], name: "FK_FK_PROFESOR_USUARIO"
    t.index ["ID_F_TIPO_USUARIO"], name: "FK_FK_TIPO_USUARIO_USUARIO"
  end

  add_foreign_key "ACTIVIDADEVALUADA", "ESTADOAPROBACCIONACTIVIDAD", column: "ID_F_ESTADO_APROBACION_ACTIVIDAD", primary_key: "ID_ESTADO_APROBACION_ACTIVIDAD", name: "FK_FK_ESTADO_APROBACION_ACTIVIDAD_EVALUADA"
  add_foreign_key "ACTIVIDADEVALUADA", "SISTEMAEVALUACION", column: "ID_SISTEMA_EVALUACION", primary_key: "ID_SISTEMA_EVALUACION", name: "FK_CONTIENE"
  add_foreign_key "ACTIVIDADEVALUADA", "TIPOEVALUACION", column: "ID_F_TIPO_EVALUACION", primary_key: "ID_TIPO_EVALUACION", name: "FK_FK_TIPO_EVALUACION"
  add_foreign_key "APLICACIONOFERTAASPIRANTE", "ESTADOCONTRATACIONASPIRANTE", column: "ID_F_ESTADO_CONTRATACION_ASPIRANTE", primary_key: "ID_ESTADO_CONTRATACION_ASPIRANTE", name: "FK_FK_ESTADO_CONTRATACION_COHORTE_ASPIRANTE"
  add_foreign_key "APLICACIONOFERTAASPIRANTE", "OFERTACONTRATACION", column: "ID_OFERTA_CONTRATACION", primary_key: "ID_OFERTA_CONTRATACION", name: "FK_FK_OFERTA_CONTRATACION_APLICACION_OFERTA"
  add_foreign_key "APLICACIONOFERTAASPIRANTE", "PROFESOR", column: "ID_F_ASPIRANTE_PROFESOR", primary_key: "ID_PROFESOR", name: "FK_ASPIRANTE_PROFESOR_COHORTE"
  add_foreign_key "ASPIRANTEREQUISITOS", "PERFILASPIRANTE", column: "ID_F_PERFIL_ASPIRANTE", primary_key: "ID_PERFIL_ASPIRANTE", name: "FK_FK_PERFIL_ASPIRANTE_REQUISITO"
  add_foreign_key "ASPIRANTEREQUISITOS", "REQUISITOSASPIRANTE", column: "ID_F_REQUISITO_ASPIRANTE", primary_key: "ID_REQUISITO_PERFIL_ASPIRANTE", name: "FK_FK_REQUISITO_PERFIL_ASPIRANTE"
  add_foreign_key "BIBLIOGRAFIAPROGRAMA", "FUENTEBIBLIOGRAFICA", column: "ID_F_FUENTE_BIBLIOGRAFICA", primary_key: "ID_FUENTE_BIBLIOGRAFICA", name: "FK_FUENTE_BIBLIOGRAFIA_PROGRAMA"
  add_foreign_key "BIBLIOGRAFIAPROGRAMA", "PROGRAMAASIGNATURA", column: "ID_F_PROGRAMA_ASIGNATURA", primary_key: "ID_PROGRAMA_ASIGNATURA", name: "FK_PROGRAMA_BIBLIOGRAFIA"
  add_foreign_key "CICLOMAESTRIA", "CICLO", column: "ID_F_CICLO", primary_key: "ID_CICLO", name: "FK_FK_CICLO_MAESTRIA"
  add_foreign_key "CICLOMAESTRIA", "MAESTRIA", column: "CODIGO_MAESTRIA", primary_key: "CODIGO_MAESTRIA", name: "FK_FK_MAESTRIA_CICLO"
  add_foreign_key "COHORTE", "MAESTRIA", column: "CODIGO_MAESTRIA", primary_key: "CODIGO_MAESTRIA", name: "FK_ES_LLEVADA_POR"
  add_foreign_key "COHORTE_ESTUDIANTE", "COHORTE", column: "ID_F_COHORTE", primary_key: "ID_COHORTE", name: "FK_COHORTE_ESTUDIANTES"
  add_foreign_key "COHORTE_ESTUDIANTE", "ESTUDIANTE", column: "ID_F_ESTUDIANTE", primary_key: "ID_ESTUDIANTE", name: "FK_ESTUDIANTES_COHORTE"
  add_foreign_key "DATOSPERSONA", "DEPARTAMENTO", column: "ID_F_DEPARTAMENTO_RESIDENCIA", primary_key: "ID_DEPARTAMENTO", name: "FK_FK_DEPARTAMENTO_DATOS_PERSONA"
  add_foreign_key "DATOSPERSONA", "EMPLEADO", column: "ID_EMPLEADO", primary_key: "ID_EMPLEADO", name: "FK_FK_EMPLEADO_DATOS_PERSONA"
  add_foreign_key "DATOSPERSONA", "MUNICIPIO", column: "ID_F_MUNICIPIO_RESIDENCIA", primary_key: "ID_MUNICIPIO", name: "FK_FK_MUNICIPIO_DATOS_PERSONA"
  add_foreign_key "DATOSPERSONA", "PAIS", column: "ID_F_PAIS_NACIONALIDAD", primary_key: "ID_PAIS", name: "FK_FK_NACIONALIDAD_DATOS_PERSONA"
  add_foreign_key "DATOSPERSONA", "PROFESOR", column: "ID_F_PROFESOR", primary_key: "ID_PROFESOR", name: "FK_FK_DATOS_PERSONALES_PROFESOR"
  add_foreign_key "DETALLECONTRATACION", "APLICACIONOFERTAASPIRANTE", column: "ID_COHORTE_ASPIRANTE_PROFESOR", primary_key: "ID_COHORTE_ASPIRANTE_PROFESOR", name: "FK_FK_DETALLE_CONTRATACION_COHORTE_ASPIRANTE_PROFESOR"
  add_foreign_key "DOCUMENTACIONPROFESOR", "PROFESOR", column: "ID_F_PROFESOR", primary_key: "ID_PROFESOR", name: "FK_FK_PROFESOR_DOCUMENTACION_PROFESOR"
  add_foreign_key "DOCUMENTACIONPROFESOR", "TIPODOCUMENTACIONPROFESOR", column: "ID_F_TIPO_DOCUMENTACION_PROFESOR", primary_key: "ID_TIPO_DOCUMENTACION_PROFESOR", name: "FK_FK_TIPO_DOCUMENTACION_PROFESOR"
  add_foreign_key "EMPLEADO", "CARGOEMPLEADO", column: "ID_F_CARGO_EMPLEADO", primary_key: "ID_CARGO_EMPLEADO", name: "FK_FK_CARGO_EMPLEADO"
  add_foreign_key "EXPEDIENTEACADEMICO", "EMPLEADO", column: "ID_EMPLEADO", primary_key: "ID_EMPLEADO", name: "FK_FK_EMPLEADO_EXPEDIENTE_ACADEMICO"
  add_foreign_key "EXPEDIENTEACADEMICO", "PROFESOR", column: "ID_PROFESOR", primary_key: "ID_PROFESOR", name: "FK_FK_PROFESOR_ASPIRANTE_EXPEDIENTE"
  add_foreign_key "EXPERIENCIALABORAL", "PROFESOR", column: "ID_PROFESOR", primary_key: "ID_PROFESOR", name: "FK_FK_EXPERIENCIA_LABORAL_PROFESOR"
  add_foreign_key "GRADOACADEMICO", "EXPEDIENTEACADEMICO", column: "ID_EXPEDIENTE_ACADEMICO", primary_key: "ID_EXPEDIENTE_ACADEMICO", name: "FK_FK_EXPEDIENTE_GRADO_ACADEMICO"
  add_foreign_key "MAESTRIA", "EMPLEADO", column: "ID_F_COORDINADOR_ACADEMICO", primary_key: "ID_EMPLEADO", name: "FK_FK_COOORDINADOR_MAESTRIA"
  add_foreign_key "MAESTRIA", "EMPLEADO", column: "ID_F_EMPLEADO_CREADOR", primary_key: "ID_EMPLEADO", name: "FK_FK_EMPLEADO_MAESTRIA"
  add_foreign_key "MAESTRIA", "ESCUELA", column: "ID_F_ESCUELA", primary_key: "ID_ESCUELA", name: "FK_FK_ESCUELA_MAESTRIA"
  add_foreign_key "MAESTRIA", "ESTADOMAESTRIA", column: "ID_ESTADO_MAESTRIA", primary_key: "ID_ESTADO_MAESTRIA", name: "FK_FK_ESTADO_MAESTRIA"
  add_foreign_key "MAESTRIAASIGNATURA", "AREACONOCIMIENTO", column: "ID_AREA_CONOCIMIENTO", primary_key: "ID_AREA_CONOCIMIENTO", name: "FK_FK_AREA_CONOCIMIENTO_MAESTRIA_ASIGNATURA"
  add_foreign_key "MAESTRIAASIGNATURA", "ASIGNATURA", column: "ID_F_ASIGNATURA", primary_key: "ID_ASIGNATURA", name: "FK_FK_ASIGNATURA_MAESTRIA"
  add_foreign_key "MAESTRIAASIGNATURA", "CICLOMAESTRIA", column: "ID_F_CICLO", primary_key: "ID_CICLO_ASIGNATURA", name: "FK_FK_CICLO_MAESTRIA_ASIGNATURA"
  add_foreign_key "MAESTRIAASIGNATURA", "MAESTRIA", column: "CODIGO_MAESTRIA", primary_key: "CODIGO_MAESTRIA", name: "FK_FK_MAESTRIA_ASIGNATURA"
  add_foreign_key "MUNICIPIO", "DEPARTAMENTO", column: "ID_F_DEPARTAMENTO", primary_key: "ID_DEPARTAMENTO", name: "FK_FK_DEPARTAMENTO_MUNICIPIO"
  add_foreign_key "OBSERVACIONESPROGRAMAASIGNATURA", "ESTADOOBSERVACIONPROGRAMAASIGNATURA", column: "ID_F_ESTADO_OBSERVACION_PROGRAMA_ASIGNATURA", primary_key: "ID_ESTADO_OBSERVACION_PROGRAMA_ASIGNATURA", name: "FK_FK_ESTADO_OBSERVACION_PROGRAMA_ASIGNATURA"
  add_foreign_key "OBSERVACIONESPROGRAMAASIGNATURA", "PROGRAMAASIGNATURA", column: "ID_F_PROGRAMA_ASIGNATURA", primary_key: "ID_PROGRAMA_ASIGNATURA", name: "FK_FK_PROGRAMA_ASIGNATURA_OBSERVACION_PROGRAMA"
  add_foreign_key "OBSERVACIONMAESTRIA", "ESTADOOBSERVACIONMAESTRIA", column: "ID_F_ESTADO_OBSERVACION_MAESTRIA", primary_key: "ID_ESTADO_OBSERVACION_MAESTRIA", name: "FK_FK_ESTADO_OBSERVACION_MAESTRIA"
  add_foreign_key "OBSERVACIONMAESTRIA", "MAESTRIA", column: "ID_F_MAESTRIA", primary_key: "CODIGO_MAESTRIA", name: "FK_FK_OBSERVACION_MAESTRIA"
  add_foreign_key "OBSERVACIONPLANESTUDIO", "ESTADOOBSERVACIONPLANESTUDIO", column: "ID_F_ESTADO_OBSERVACION_PLAN_ESTUDIO", primary_key: "ID_ESTADO_OBSERVACION_PLAN_ESTUDIO", name: "FK_FK_ESTADO_OBSERVACION_PLAN_ESTUDIO"
  add_foreign_key "OBSERVACIONPLANESTUDIO", "PLANESTUDIOS", column: "ID_F_PLAN_ESTUDIOS", primary_key: "ID_PLAN_ESTUDIO", name: "FK_FK_PLAN_ESTUDIOS_OBSERVACION"
  add_foreign_key "OFERTACONTRATACION", "COHORTE", column: "ID_COHORTE", primary_key: "ID_COHORTE", name: "FK_FK_COHORTE_OFERTA_CONTRATACION"
  add_foreign_key "OFERTACONTRATACION", "ESTADOOFERTACONTRATACION", column: "ID_OFERTA_CONTRATACION", primary_key: "ID_ESTADO_OFERTA_CONTRACACION", name: "FK_FK_ESTADO_OFERTA_CONTRATACION"
  add_foreign_key "OFERTACONTRATACION", "MAESTRIAASIGNATURA", column: "ID_MAESTRIA_ASIGNATURA", primary_key: "ID_MAESTRIA_ASIGNATURA", name: "FK_FK_MAESTRIA_ASIGNATURA_OFERTA_CONTRATACION"
  add_foreign_key "PERFILASPIRANTE", "MAESTRIA", column: "CODIGO_MAESTRIA", primary_key: "CODIGO_MAESTRIA", name: "FK_FK_MAESTRIA_PERFIL_ASPIRANTE"
  add_foreign_key "PERMISO", "RECURSO", column: "ID_F_RECURSO", primary_key: "ID_RECURSO", name: "FK_FK_RECURSO_PERMISO"
  add_foreign_key "PERMISO", "USUARIO", column: "ID_F_ROL_USUARIO", primary_key: "ID_USUARIO", name: "FK_FK_ROL_USUARIO_PERMISO"
  add_foreign_key "PLANESTUDIOS", "EMPLEADO", column: "ID_F_EMPLEADO_CREACION", primary_key: "ID_EMPLEADO", name: "FK_FK_EMPLEADO_PLAN_ESTUDIOS"
  add_foreign_key "PLANESTUDIOS", "ESTADOPLANESTUDIO", column: "ID_F_ESTADO_PLAN_ESTUDIO", primary_key: "ID_ESTADO_PLAN_ESTUDIO", name: "FK_FK_ESTADO_PLAN_ESTUDIO"
  add_foreign_key "PLANESTUDIOS", "MAESTRIA", column: "CODIGO_MAESTRIA", primary_key: "CODIGO_MAESTRIA", name: "FK_FK_PLAN_ESTUDIO_MAESTRIA"
  add_foreign_key "PLANESTUDIOS", "MODALIDAD", column: "ID_MODALIDAD", primary_key: "ID_MODALIDAD", name: "FK_DEFINE_MODALIDAD"
  add_foreign_key "PROFESOR", "TIPOPROFESOR", column: "ID_F_TIPO_PROFESOR", primary_key: "ID_TIPO_PROFESOR", name: "FK_FK_TIPO_PROFESOR"
  add_foreign_key "PROGRAMAASIGNATURA", "ASIGNATURA", column: "ID_F_ASIGNATURA", primary_key: "ID_ASIGNATURA", name: "FK_PROGRAMA"
  add_foreign_key "PROGRAMAASIGNATURA", "EMPLEADO", column: "ID_F_EMPLEADO_CREADOR", primary_key: "ID_EMPLEADO", name: "FK_FK_EMPLEADO_PROGRAMA_ASIGNATURA"
  add_foreign_key "PROGRAMAASIGNATURA", "ESTADOPROGRAMAASIGNATURA", column: "ID_F_ESTADO_PROGRAMA_ASIGNATURA", primary_key: "ID_ESTADO_PROGRAMA_ASIGNATURA", name: "FK_FK_ESTADO_PROGRAMA_ASIGNATURA"
  add_foreign_key "PROGRAMAMETODOLOGIA", "METODOLOGIAENSENANZA", column: "ID_F_METODOLOGIA", primary_key: "ID_METODOLOGIA", name: "FK_METODOLOGIA_PROGRAMA"
  add_foreign_key "PROGRAMAMETODOLOGIA", "PROGRAMAASIGNATURA", column: "ID_F_PROGRAMA_ASIGNATURA", primary_key: "ID_PROGRAMA_ASIGNATURA", name: "FK_PROGRAMA_METODOLOGIA"
  add_foreign_key "RECURSO", "RECURSO", column: "ID_F_RECURSO_PADRE", primary_key: "ID_RECURSO", name: "FK_FK_RECURSO_PADRE"
  add_foreign_key "RECURSO", "TIPORECURSO", column: "ID_F_TIPO_RECURSO", primary_key: "ID_TIPO_RECURSO", name: "FK_FK_TIPO_RECURSO"
  add_foreign_key "REQUISITOS", "MAESTRIAASIGNATURA", column: "ID_MAESTRIA_ASIGNATURA", primary_key: "ID_MAESTRIA_ASIGNATURA", name: "FK_FK_MAESTRIA_ASIGNATURA_BASE"
  add_foreign_key "REQUISITOS", "MAESTRIAASIGNATURA", column: "MAE_ID_MAESTRIA_ASIGNATURA", primary_key: "ID_MAESTRIA_ASIGNATURA", name: "FK_FK_MAESTRIA_ASIGNATURA_REQUISITO"
  add_foreign_key "ROL", "USUARIO", column: "ID_F_USUARIO", primary_key: "ID_USUARIO", name: "FK_FK_USUARIO"
  add_foreign_key "ROL", "USUARIO", column: "ID_F_USUARIO_ROL", primary_key: "ID_USUARIO", name: "FK_FK_USUARIO_ROL"
  add_foreign_key "SISTEMAEVALUACION", "PROGRAMAASIGNATURA", column: "ID_F_PROGRAMA_ASIGNATURA", primary_key: "ID_PROGRAMA_ASIGNATURA", name: "FK_FK_SISTEMA_EVALUACION_PROGRAMA_ASIGNATURA"
  add_foreign_key "USUARIO", "EMPLEADO", column: "ID_EMPLEADO", primary_key: "ID_EMPLEADO", name: "FK_FK_EMPLEADO_USUARIO"
  add_foreign_key "USUARIO", "PROFESOR", column: "ID_F_PROFESOR", primary_key: "ID_PROFESOR", name: "FK_FK_PROFESOR_USUARIO"
  add_foreign_key "USUARIO", "TIPOUSUARIO", column: "ID_F_TIPO_USUARIO", primary_key: "ID_TIPO_USUARIO", name: "FK_FK_TIPO_USUARIO_USUARIO"
end
