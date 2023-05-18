class EmpleadosController < ApplicationController
  def index
    @empleados = Empleado.all
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

