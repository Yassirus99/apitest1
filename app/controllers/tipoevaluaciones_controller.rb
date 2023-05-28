class TipoEvaluacionesController < ApplicationController
    before_action :set_tipo_evaluacion, only: [:show, :update, :destroy]
  
    # GET /tipo_evaluaciones
    def index
      @tipo_evaluaciones = TipoEvaluacion.all
      render json: @tipo_evaluaciones
    end
  
    # GET /tipo_evaluaciones/1
    def show
      render json: @tipo_evaluacion
    end
  
    # POST /tipo_evaluaciones
    def create
      @tipo_evaluacion = TipoEvaluacion.new(tipo_evaluacion_params)
  
      if @tipo_evaluacion.save
        render json: @tipo_evaluacion, status: :created, location: @tipo_evaluacion
      else
        render json: @tipo_evaluacion.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /tipo_evaluaciones/1
    def update
      if @tipo_evaluacion.update(tipo_evaluacion_params)
        render json: @tipo_evaluacion
      else
        render json: @tipo_evaluacion.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /tipo_evaluaciones/1
    def destroy
      @tipo_evaluacion.destroy
    end
  
    private
  
    # Obtiene el tipo de evaluación por su ID
    def set_tipo_evaluacion
      @tipo_evaluacion = TipoEvaluacion.find(params[:id])
    end
  
    # Solo permite los parámetros necesarios para la creación y actualización del tipo de evaluación
    def tipo_evaluacion_params
      params.require(:tipo_evaluacion).permit(:TIPO_EVALUACION, :ACTIVO_TIPO_EVALUACION)
    end
  end
  