class EstadoObservacionProgramaAsignaturaController < ApplicationController
    def index
      @estados = EstadoObservacionProgramaAsignatura.all
      render json: @estados, status: :ok
    end
  
    def show
      @estado = EstadoObservacionProgramaAsignatura.find_by(ID_ESTADO_OBSERVACION_PROGRAMA_ASIGNATURA: params[:id])
  
      # Validación de existencia de estado
      if @estado.nil?
        render json: { error: "Estado no encontrado" }, status: :not_found
        return
      end
  
      render json: @estado, status: :ok
    end
  
    def create
      estado_params = params.require(:estado).permit(:ESTADO_OBSERVACION_PRGRAMA_ASIGNATURA)
  
      @estado = EstadoObservacionProgramaAsignatura.new(estado_params)
  
      if @estado.save
        render json: @estado, status: :created
      else
        render json: {
          errors: @estado.errors,
          message: "El estado no pudo ser creado"
        }, status: :unprocessable_entity
      end
    end
  
    def update
      estado_params = params.require(:estado).permit(:ESTADO_OBSERVACION_PRGRAMA_ASIGNATURA)
  
      @estado = EstadoObservacionProgramaAsignatura.find_by(ID_ESTADO_OBSERVACION_PROGRAMA_ASIGNATURA: params[:id])
  
      # Validación de existencia de estado
      if @estado.nil?
        render json: { error: "Estado no encontrado" }, status: :not_found
        return
      end
  
      if @estado.update(estado_params)
        render json: @estado, status: :ok
      else
        render json: {
          errors: @estado.errors,
          message: "El estado no pudo ser actualizado"
        }, status: :unprocessable_entity
      end
    end
  
    def destroy
      @estado = EstadoObservacionProgramaAsignatura.find_by(ID_ESTADO_OBSERVACION_PROGRAMA_ASIGNATURA: params[:id])
  
      # Validación de existencia de estado
      if @estado.nil?
        render json: { error: "Estado no encontrado" }, status: :not_found
        return
      end
  
      @estado.destroy
      render json: { message: "El estado fue eliminado" }, status: :ok
    end
  end
  