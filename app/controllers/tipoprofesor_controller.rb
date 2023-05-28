class TipoProfesoresController < ApplicationController
    before_action :set_tipo_profesor, only: [:show, :update, :destroy]
  
    # GET /tipo_profesores
    def index
      @tipo_profesores = TipoProfesor.all
      render json: @tipo_profesores
    end
  
    # GET /tipo_profesores/1
    def show
      render json: @tipo_profesor
    end
  
    # POST /tipo_profesores
    def create
      @tipo_profesor = TipoProfesor.new(tipo_profesor_params)
  
      if @tipo_profesor.save
        render json: @tipo_profesor, status: :created, location: @tipo_profesor
      else
        render json: @tipo_profesor.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /tipo_profesores/1
    def update
      if @tipo_profesor.update(tipo_profesor_params)
        render json: @tipo_profesor
      else
        render json: @tipo_profesor.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /tipo_profesores/1
    def destroy
      @tipo_profesor.destroy
    end
  
    private
  
    # Obtiene el tipo de profesor por su ID
    def set_tipo_profesor
      @tipo_profesor = TipoProfesor.find(params[:id])
    end
  
    # Solo permite los parámetros necesarios para la creación y actualización del tipo de profesor
    def tipo_profesor_params
      params.require(:tipo_profesor).permit(:TIPO_PROFESOR, :ACTIVO_TIPO_PROFESOR)
    end
  end
  