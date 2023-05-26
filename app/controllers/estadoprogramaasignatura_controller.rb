class EstadoprogramaasignaturasController < ApplicationController
    def index
      @estadoprogramaasignaturas = Estadoprogramaasignatura.all
    end
  
    def new
      @estadoprogramaasignatura = Estadoprogramaasignatura.new
    end
  
    def create
      @estadoprogramaasignatura = Estadoprogramaasignatura.new(estadoprogramaasignatura_params)
      if @estadoprogramaasignatura.save
        redirect_to estadoprogramaasignaturas_path, notice: 'Estado del programa de asignatura creado exitosamente.'
      else
        render :new
      end
    end
  
    private
  
    def estadoprogramaasignatura_params
      params.require(:estadoprogramaasignatura).permit(:ID_ESTADO_PROGRAMA_ASIGNATURA, :ESTADO_PROGRAMA_ASIGNATURA)
    end
  end
  