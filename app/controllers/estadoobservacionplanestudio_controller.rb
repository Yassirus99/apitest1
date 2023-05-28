class EstadoObservacionPlanEstudioController < ApplicationController
  def index
    @estado_observacion_plan_estudio = EstadoObservacionPlanEstudio.all
    render json: @estado_observacion_plan_estudio, status: :ok
  end

  def show
    @estado_observacion_plan_estudio = EstadoObservacionPlanEstudio.find_by(ID_ESTADO_OBSERVACION_PLAN_ESTUDIO: params[:id])

    if @estado_observacion_plan_estudio.nil?
      render json: {error: "Estado Observacion Plan Estudio no encontrado"}, status: :not_found
      return
    end

    render json: @estado_observacion_plan_estudio, status: :ok
  end

  def create
    estado_observacion_plan_estudio_params = params
      .require(:estado_observacion_plan_estudio)
      .permit(
        :ID_ESTADO_OBSERVACION_PLAN_ESTUDIO,
        :ESTADO_OBSERVACION_PLAN_ESTUDIO
      )

    @estado_observacion_plan_estudio = EstadoObservacionPlanEstudio.new(estado_observacion_plan_estudio_params)
    if @estado_observacion_plan_estudio.save
      render json: @estado_observacion_plan_estudio, status: :created
    else
      render json: {
        errors: @estado_observacion_plan_estudio.errors,
        message: "El Estado Observacion Plan Estudio no pudo ser creado"
      }, status: :unprocessable_entity
    end
  end

  def update
    estado_observacion_plan_estudio_params = params
      .require(:estado_observacion_plan_estudio)
      .permit(
        :ID_ESTADO_OBSERVACION_PLAN_ESTUDIO,
        :ESTADO_OBSERVACION_PLAN_ESTUDIO
      )

    @estado_observacion_plan_estudio = EstadoObservacionPlanEstudio.find_by(ID_ESTADO_OBSERVACION_PLAN_ESTUDIO: params[:id])

    # validacion de existencia de estado_observacion_plan_estudio
    if @estado_observacion_plan_estudio.nil?
      render json: {error: "Estado Observacion Plan Estudio no encontrado"}, status: :not_found
      return
    end

    if @estado_observacion_plan_estudio.update(estado_observacion_plan_estudio_params)
      render json: @estado_observacion_plan_estudio, status: :ok
    else
      render json: {
        errors: @estado_observacion_plan_estudio.errors,
        message: "El estado_observacion_plan_estudio no pudo ser actualizado"
      }, status: :unprocessable_entity
    end
  end

  def destroy
    @estado_observacion_plan_estudio = EstadoObservacionPlanEstudioController.find_by(ID_ESTADO_OBSERVACION_PLAN_ESTUDIO: params[:id])

    # validacion de existencia de estado_observacion_plan_estudio
    if @estado_observacion_plan_estudio.nil?
      render json: {error: "Estado Observacion Plan Estudio no encontrado"}, status: :not_found
      return
    end

    @estado_observacion_plan_estudio.destroy
    render json: {message: "El Estado Observacion Plan Estudio fue eliminado"}, status: :ok
  end
end

