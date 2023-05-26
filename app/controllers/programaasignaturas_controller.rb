class ProgramaasignaturasController < ApplicationController
    before_action :set_programaasignatura, only: [:show, :update, :destroy]
  
    # GET /programaasignaturas
    def index
      @programaasignaturas = Programaasignatura.all
      render json: @programaasignaturas
    end
  
    # GET /programaasignaturas/1
    def show
      render json: @programaasignatura
    end
  
    # POST /programaasignaturas
    def create
      @programaasignatura = Programaasignatura.new(programaasignatura_params)
  
      if @programaasignatura.save
        render json: @programaasignatura, status: :created, location: @programaasignatura
      else
        render json: @programaasignatura.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /programaasignaturas/1
    def update
      if @programaasignatura.update(programaasignatura_params)
        render json: @programaasignatura
      else
        render json: @programaasignatura.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /programaasignaturas/1
    def destroy
      @programaasignatura.destroy
    end
  
    private
  
    # Obtiene el programaasignatura por su ID
    def set_programaasignatura
      @programaasignatura = Programaasignatura.find(params[:id])
    end
  
    # Solo permite los parámetros necesarios para la creación y actualización del programaasignatura
    def programaasignatura_params
      params.require(:programaasignatura).permit(:ID_F_ASIGNATURA, :ID_F_ESTADO_PROGRAMA_ASIGNATURA, :ID_F_EMPLEADO_CREADOR, :ACTIVO_PROGRAMA_ASIGNATURA, :NUM_HORAS_PRACTICAS_SEMANA, :NUM_HORAS_TEORICAS_SEMANA, :DURACION_SEMANAS, :INTRODUCCION, :DESCRIPCION, :OBJETIVOS, :METODOLOGIA_DESCRIPCION)
    end
  end
  