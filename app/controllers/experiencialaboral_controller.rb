class ExperienciaLaboralController < ApplicationController
    before_action :set_experiencia_laboral, only: [:show, :edit, :update, :destroy]
  
    def index
      @experiencias_laborales = ExperienciaLaboral.all
    end
  
    def show
    end
  
    def new
      @experiencia_laboral = ExperienciaLaboral.new
    end
  
    def create
      @experiencia_laboral = ExperienciaLaboral.new(experiencia_laboral_params)
  
      if @experiencia_laboral.save
        redirect_to experiencia_laboral_path(@experiencia_laboral), notice: 'Experiencia laboral creada exitosamente.'
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @experiencia_laboral.update(experiencia_laboral_params)
        redirect_to experiencia_laboral_path(@experiencia_laboral), notice: 'Experiencia laboral actualizada exitosamente.'
      else
        render :edit
      end
    end
  
    def destroy
      @experiencia_laboral.destroy
      redirect_to experiencias_laborales_path, notice: 'Experiencia laboral eliminada exitosamente.'
    end
  
    private
  
    def set_experiencia_laboral
      @experiencia_laboral = ExperienciaLaboral.find(params[:id])
    end
  
    def experiencia_laboral_params
      params.require(:experiencia_laboral).permit(:ID_EXPERIENCIA_LABORAL, :ID_PROFESOR, :DESCRIPCION_EXPERIENCIA_LABORAL, :TITULO_PUESTO_EXPERIENCIA, :FECHA_INICIO, :FECHA_FIN, :URL)
    end
  end
  