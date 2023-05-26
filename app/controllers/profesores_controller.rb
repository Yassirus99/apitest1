class ProfesoresController < ApplicationController
    before_action :set_profesor, only: [:show, :update, :destroy]
  
    # GET /profesores
    def index
      @profesores = Profesor.all
      render json: @profesores
    end
  
    # GET /profesores/1
    def show
      render json: @profesor
    end
  
    # POST /profesores
    def create
      @profesor = Profesor.new(profesor_params)
  
      if @profesor.save
        render json: @profesor, status: :created, location: @profesor
      else
        render json: @profesor.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /profesores/1
    def update
      if @profesor.update(profesor_params)
        render json: @profesor
      else
        render json: @profesor.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /profesores/1
    def destroy
      @profesor.destroy
    end
  
    private
  
    # Obtiene el profesor por su ID
    def set_profesor
      @profesor = Profesor.find(params[:id])
    end
  
    # Solo permite los parámetros necesarios para la creación y actualización del profesor
    def profesor_params
      params.require(:profesor).permit(:ID_F_TIPO_PROFESOR)
    end
  end
  