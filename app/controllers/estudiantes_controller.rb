class EstudiantesController < ApplicationController
    before_action :set_estudiante, only: [:show, :update, :destroy]
  
    def index
      @estudiantes = Estudiante.all
      render json: @estudiantes, status: :ok
    end
  
    def show
      render json: @estudiante, status: :ok
    end
  
    def create
      @estudiante = Estudiante.new(estudiante_params)
  
      if @estudiante.save
        render json: @estudiante, status: :created
      else
        render json: { errors: @estudiante.errors, message: "No se pudo crear el estudiante" }, status: :unprocessable_entity
      end
    end
  
    def update
      if @estudiante.update(estudiante_params)
        render json: @estudiante, status: :ok
      else
        render json: { errors: @estudiante.errors, message: "No se pudo actualizar el estudiante" }, status: :unprocessable_entity
      end
    end
  
    def destroy
      @estudiante.destroy
      render json: { message: "El estudiante fue eliminado" }, status: :ok
    end
  
    private
  
    def set_estudiante
      @estudiante = Estudiante.find_by(ID_ESTUDIANTE: params[:id])
  
      # Validación de existencia de estudiante
      if @estudiante.nil?
        render json: { error: "Estudiante no encontrado" }, status: :not_found
      end
    end
  
    def estudiante_params
      params.require(:estudiante).permit(:ID_ESTUDIANTE)
    end
  end
  