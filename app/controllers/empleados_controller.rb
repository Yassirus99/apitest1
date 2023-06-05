class EmpleadosController < ApplicationController
  def index
    @empleados = Empleado.includes(
      :cargo_empleado,
      :datospersona,
      :usuario,
    ).all

    if(params[:EMPLEADO_ACTIVO].present?)
      @empleados = @empleados.where("EMPLEADO_ACTIVO = ?", params[:EMPLEADO_ACTIVO])
    end

    if(params[:ID_F_CARGO_EMPLEADO].present?)
      @empleados = @empleados.where("ID_F_CARGO_EMPLEADO = ?", params[:ID_F_CARGO_EMPLEADO])
    end

    @usuarios = Usuario.where("ID_F_TIPO_USUARIO = ?", 1)
      .where.not("ID_EMPLEADO IS NULL")

    @empleados = @empleados.as_json(include: [
      :cargo_empleado,
      :usuario => {
        :include => [
          :tipousuario,
          :profesor,
          :rol => {
            :include => [
              :usuario_rol,
              :usuario
            ]
          },
        ]
      },
      :datospersona => {
        :include => [
          :pais,
          :departamento,
          :municipio,
          :profesor
        ]
      }
    ])
    render json: @empleados, status: :ok
  end

  def empleados_sin_usuario
    @empleados = Empleado.includes(
      :cargo_empleado,
      :datospersona,
      :usuario,
    ).all

    if(params[:EMPLEADO_ACTIVO].present?)
      @empleados = @empleados.where("EMPLEADO_ACTIVO = ?", params[:EMPLEADO_ACTIVO])
    end

    if(params[:ID_F_CARGO_EMPLEADO].present?)
      @empleados = @empleados.where("ID_F_CARGO_EMPLEADO = ?", params[:ID_F_CARGO_EMPLEADO])
    end

    @usuarios = Usuario.where.not("ID_F_TIPO_USUARIO = ?", 1)
      .where.not("ID_EMPLEADO IS NULL")

    listIdsEmpleadosExclude = []
    @usuarios.each do |usuario|
      listIdsEmpleadosExclude.push(usuario.ID_EMPLEADO)
    end

    # render json: listIdsEmpleadosExclude, status: :ok
    # return

    if(listIdsEmpleadosExclude.length > 0)
      @empleados = @empleados.where.not("ID_EMPLEADO", listIdsEmpleadosExclude)
    end

    @empleados = @empleados.as_json(include: [
      :cargo_empleado,
      :usuario => {
        :include => [
          :tipousuario,
          :profesor,
          :rol => {
            :include => [
              :usuario_rol,
              :usuario
            ]
          },
        ]
      },
      :datospersona => {
        :include => [
          :pais,
          :departamento,
          :municipio,
          :profesor
        ]
      }
    ])
    render json: @empleados, status: :ok
  end

  def show
    @empleado = Empleado.find_by(ID_EMPLEADO: params[:id])

    # validacion de existencia de empleado
    if @empleado.nil?
      render json: {error: "Empleado no encontrado"}, status: :not_found
      return
    end

    render json: @empleado, status: :ok
  end

  def create

    empleado_params = params
      .require(:empleado)
      .permit(
        :ID_F_CARGO_EMPLEADO,
        :EMPLEADO_ACTIVO,
        :ID_EMPLEADO
      )

    @empleado = Empleado.new(empleado_params)
    if @empleado.save
      render json: @empleado, status: :created
    else
      render json: {
        errors: @empleado.errors,
        message: "El empleado no pudo ser creado"
      }, status: :unprocessable_entity
    end
  end

  def update
    empleado_params = params
      .require(:empleado)
      .permit(
        :ID_F_CARGO_EMPLEADO,
        :EMPLEADO_ACTIVO,
        :ID_EMPLEADO
      )

    @empleado = Empleado.find_by(ID_EMPLEADO: params[:id])

    # validacion de existencia de empleado
    if @empleado.nil?
      render json: {error: "Empleado no encontrado"}, status: :not_found
      return
    end

    if @empleado.update(empleado_params)
      render json: @empleado, status: :ok
    else
      render json: {
        errors: @empleado.errors,
        message: "El empleado no pudo ser actualizado"
      }, status: :unprocessable_entity
    end
  end

  def destroy
    @empleado = Empleado.find_by(ID_EMPLEADO: params[:id])

    # validacion de existencia de empleado
    if @empleado.nil?
      render json: {error: "Empleado no encontrado"}, status: :not_found
      return
    end

    @empleado.destroy
    render json: {message: "El empleado fue eliminado"}, status: :ok
  end
end

