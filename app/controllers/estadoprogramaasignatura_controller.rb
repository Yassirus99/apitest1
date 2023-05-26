class EstadoprogramaasignaturasController < ApplicationController
    before_action :set_estado_programa_asignatura, only: [:show, :update, :destroy]
  
    # GET /estadoprogramaasignaturas
    def index
      @estadoprogramaasignaturas = Estadoprogramaasignatura.all
      render json: @estadoprogramaasignaturas
    end
  
    # GET /estadoprogramaasignaturas/:id
    def show
      render json: @estado_programa_asignatura
    end
  
    # POST /estadoprogramaasignaturas
    def create
      @estado_programa_asignatura = Estadoprogramaasignatura.new(estado_programa_asignatura_params)
      if @estado_programa_asignatura.save
        render json: @estado_programa_asignatura, status: :created
      else
        render json: @estado_programa_asignatura.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH /estadoprogramaasignaturas/:id
    def update
      if @estado_programa_asignatura.update(estado_programa_asignatura_params)
        render json: @estado_programa_asignatura
      else
        render json: @estado_programa_asignatura.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /estadoprogramaasignaturas/:id
    def destroy
      @estado_programa_asignatura.destroy
      head :no_content
    end
  
    private
  
    def set_estado_programa_asignatura
      @estado_programa_asignatura = Estadoprogramaasignatura.find(params[:id])
    end
  
    def estado_programa_asignatura_params
      params.permit(:ID_ESTADO_PROGRAMA_ASIGNATURA, :ESTADO_PROGRAMA_ASIGNATURA)
    end
  end
  