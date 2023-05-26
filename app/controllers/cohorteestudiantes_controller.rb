# app/controllers/cohortes_estudiantes_controller.rb
class CohortesEstudiantesController < ApplicationController
    before_action :set_cohorte_estudiante, only: [:show, :update, :destroy]
  
    # GET /cohortes_estudiantes
    def index
      @cohortes_estudiantes = CohorteEstudiante.all
      render json: @cohortes_estudiantes
    end
  
    # GET /cohortes_estudiantes/1
    def show
      render json: @cohortes_estudiante
    end
  
    # POST /cohortes_estudiantes
    def create
      @cohortes_estudiante = CohorteEstudiante.new(cohorte_estudiante_params)
      if @cohortes_estudiante.save
        render json: @cohortes_estudiante, status: :created
      else
        render json: @cohortes_estudiante.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /cohortes_estudiantes/1
    def update
      if @cohortes_estudiante.update(cohorte_estudiante_params)
        render json: @cohortes_estudiante
      else
        render json: @cohortes_estudiante.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /cohortes_estudiantes/1
    def destroy
      @cohortes_estudiante.destroy
    end
  
    private
  
    # Buscar cohorte_estudiante por ID
    def set_cohorte_estudiante
      @cohortes_estudiante = CohorteEstudiante.find(params[:id])
    end
  
    # Parámetros permitidos
    def cohorte_estudiante_params
      params.require(:cohortes_estudiante).permit(:ID_F_COHORTE, :ID_F_ESTUDIANTE, :ACTIVO_COHORTE_ESTUDIANTE, :FECHA_CREACION, :FECHA_MODIFICACION)
    end
  end
  