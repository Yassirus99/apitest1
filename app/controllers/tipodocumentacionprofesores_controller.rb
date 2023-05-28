class TipoDocumentacionProfesoresController < ApplicationController
    before_action :set_tipo_documentacion_profesor, only: [:show, :update, :destroy]
  
    # GET /tipo_documentacion_profesores
    def index
      @tipo_documentacion_profesores = TipoDocumentacionProfesor.all
      render json: @tipo_documentacion_profesores
    end
  
    # GET /tipo_documentacion_profesores/1
    def show
      render json: @tipo_documentacion_profesor
    end
  
    # POST /tipo_documentacion_profesores
    def create
      @tipo_documentacion_profesor = TipoDocumentacionProfesor.new(tipo_documentacion_profesor_params)
  
      if @tipo_documentacion_profesor.save
        render json: @tipo_documentacion_profesor, status: :created, location: @tipo_documentacion_profesor
      else
        render json: @tipo_documentacion_profesor.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /tipo_documentacion_profesores/1
    def update
      if @tipo_documentacion_profesor.update(tipo_documentacion_profesor_params)
        render json: @tipo_documentacion_profesor
      else
        render json: @tipo_documentacion_profesor.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /tipo_documentacion_profesores/1
    def destroy
      @tipo_documentacion_profesor.destroy
    end
  
    private
  
    # Obtiene el tipo de documentación del profesor por su ID
    def set_tipo_documentacion_profesor
      @tipo_documentacion_profesor = TipoDocumentacionProfesor.find(params[:id])
    end
  
    # Solo permite los parámetros necesarios para la creación y actualización del tipo de documentación del profesor
    def tipo_documentacion_profesor_params
      params.require(:tipo_documentacion_profesor).permit(:TIPO_DOCUMENTACION_PROFESOR)
    end
  end
  