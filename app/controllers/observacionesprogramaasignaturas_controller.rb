class ObservacionesprogramaasignaturasController < ApplicationController
    before_action :set_observacionesprogramaasignatura, only: [:show, :update, :destroy]
  
    # GET /observacionesprogramaasignaturas
    def index
      @observacionesprogramaasignaturas = Observacionesprogramaasignatura.all
      render json: @observacionesprogramaasignaturas
    end
  
    # GET /observacionesprogramaasignaturas/1
    def show
      render json: @observacionesprogramaasignatura
    end
  
    # POST /observacionesprogramaasignaturas
    def create
      @observacionesprogramaasignatura = Observacionesprogramaasignatura.new(observacionesprogramaasignatura_params)
  
      if @observacionesprogramaasignatura.save
        render json: @observacionesprogramaasignatura, status: :created, location: @observacionesprogramaasignatura
      else
        render json: @observacionesprogramaasignatura.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /observacionesprogramaasignaturas/1
    def update
      if @observacionesprogramaasignatura.update(observacionesprogramaasignatura_params)
        render json: @observacionesprogramaasignatura
      else
        render json: @observacionesprogramaasignatura.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /observacionesprogramaasignaturas/1
    def destroy
      @observacionesprogramaasignatura.destroy
    end
  
    private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_observacionesprogramaasignatura
      @observacionesprogramaasignatura = Observacionesprogramaasignatura.find(params[:id])
    end
  
    # Only allow a trusted parameter "white list" through.
    def observacionesprogramaasignatura_params
      params.require(:observacionesprogramaasignatura).permit(:ID_OBSERVACION_PROGRAMA_ASIGNATURA, :OBSERVACION_PROGRAMA_ASIGNATURA, :ID_F_PROGRAMA_ASIGNATURA, :ID_F_ESTADO_OBSERVACION_PROGRAMA_ASIGNATURA)
    end
  end
  