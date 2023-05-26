class ActividadEvaluadasController < ApplicationController
    def index
      @actividad_evaluadas = ActividadEvaluada.all
    end
  
    def show
      @actividad_evaluada = ActividadEvaluada.find(params[:id])
    end
  
    def new
      @actividad_evaluada = ActividadEvaluada.new
    end
  
    def create
      @actividad_evaluada = ActividadEvaluada.new(actividad_evaluada_params)
      if @actividad_evaluada.save
        redirect_to @actividad_evaluada, notice: 'Actividad Evaluada creada exitosamente.'
      else
        render :new
      end
    end
  
    def edit
      @actividad_evaluada = ActividadEvaluada.find(params[:id])
    end
  
    def update
      @actividad_evaluada = ActividadEvaluada.find(params[:id])
      if @actividad_evaluada.update(actividad_evaluada_params)
        redirect_to @actividad_evaluada, notice: 'Actividad Evaluada actualizada exitosamente.'
      else
        render :edit
      end
    end
  
    def destroy
      @actividad_evaluada = ActividadEvaluada.find(params[:id])
      @actividad_evaluada.destroy
      redirect_to actividad_evaluadas_url, notice: 'Actividad Evaluada eliminada exitosamente.'
    end
  
    private
  
    def actividad_evaluada_params
      params.require(:actividad_evaluada).permit(:ID_ACTIVIDAD_EVALUADA, :ID_F_TIPO_EVALUACION, :ID_F_ESTADO_APROBACION_ACTIVIDAD, :PORCENTAJE_EVALUACION, :NUMERO_ACTIVIDAD_EVALUADA)
    end
  end
  