class SistemaEvaluacionesController < ApplicationController
    before_action :set_sistema_evaluacion, only: [:show, :update, :destroy]
  
    # GET /sistema_evaluaciones
    def index
      @sistema_evaluaciones = SistemaEvaluacion.all
      render json: @sistema_evaluaciones
    end
  
    # GET /sistema_evaluaciones/1
    def show
      render json: @sistema_evaluacion
    end
  
    # POST /sistema_evaluaciones
    def create
      @sistema_evaluacion = SistemaEvaluacion.new(sistema_evaluacion_params)
  
      if @sistema_evaluacion.save
        render json: @sistema_evaluacion, status: :created, location: @sistema_evaluacion
      else
        render json: @sistema_evaluacion.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /sistema_evaluaciones/1
    def update
      if @sistema_evaluacion.update(sistema_evaluacion_params)
        render json: @sistema_evaluacion
      else
        render json: @sistema_evaluacion.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /sistema_evaluaciones/1
    def destroy
      @sistema_evaluacion.destroy
    end
  
    private
  
    # Obtiene el sistema de evaluación por su ID
    def set_sistema_evaluacion
      @sistema_evaluacion = SistemaEvaluacion.find(params[:id])
    end
  
    # Solo permite los parámetros necesarios para la creación y actualización del sistema de evaluación
    def sistema_evaluacion_params
      params.require(:sistema_evaluacion).permit(:ID_F_PROGRAMA_ASIGNATURA, :ACTIVO_SISTEMA_EVALUACION, :FECHA_CREACION, :FECHA_MODIFICACION)
    end
  end
  