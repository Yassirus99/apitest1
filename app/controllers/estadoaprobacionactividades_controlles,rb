class EstadoAprobacionActividadesController < ApplicationController
  def index
    @estados_aprobacion = EstadoAprobacionActividad.all
  end

  def show
    @estado_aprobacion = EstadoAprobacionActividad.find(params[:id])
  end

  def new
    @estado_aprobacion = EstadoAprobacionActividad.new
  end

  def create
    @estado_aprobacion = EstadoAprobacionActividad.new(estado_aprobacion_params)

    if @estado_aprobacion.save
      redirect_to show_estado_aprobacion_actividad_path(@estado_aprobacion), notice: 'El estado de aprobación de la actividad ha sido creado exitosamente.'
    else
      render :new
    end
  end

  def edit
    @estado_aprobacion = EstadoAprobacionActividad.find(params[:id])
  end

  def update
    @estado_aprobacion = EstadoAprobacionActividad.find(params[:id])

    if @estado_aprobacion.update(estado_aprobacion_params)
      redirect_to show_estado_aprobacion_actividad_path(@estado_aprobacion), notice: 'El estado de aprobación de la actividad ha sido actualizado exitosamente.'
    else
      render :edit
    end
  end

  def destroy
    @estado_aprobacion = EstadoAprobacionActividad.find(params[:id])
    @estado_aprobacion.destroy

    redirect_to index_estado_aprobacion_actividades_path, notice: 'El estado de aprobación de la actividad ha sido eliminado exitosamente.'
  end

  private

  def estado_aprobacion_params
    params.require(:estado_aprobacion_actividad).permit(:ID_ESTADO_APROBACION_ACTIVIDAD, :ESTADO_APROBACION_ACTIVIDAD)
  end
end
