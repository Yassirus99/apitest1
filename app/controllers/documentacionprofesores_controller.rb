class DocumentacionProfesoresController < ApplicationController
    def index
      @documentacion_profesores = DocumentacionProfesor.all
    end
  
    def show
      @documentacion_profesor = DocumentacionProfesor.find(params[:id])
    end
  
    def new
      @documentacion_profesor = DocumentacionProfesor.new
    end
  
    def create
      @documentacion_profesor = DocumentacionProfesor.new(documentacion_profesor_params)
  
      if @documentacion_profesor.save
        redirect_to show_documentacion_profesor_path(@documentacion_profesor), notice: 'La documentación del profesor ha sido creada exitosamente.'
      else
        render :new
      end
    end
  
    def edit
      @documentacion_profesor = DocumentacionProfesor.find(params[:id])
    end
  
    def update
      @documentacion_profesor = DocumentacionProfesor.find(params[:id])
  
      if @documentacion_profesor.update(documentacion_profesor_params)
        redirect_to show_documentacion_profesor_path(@documentacion_profesor), notice: 'La documentación del profesor ha sido actualizada exitosamente.'
      else
        render :edit
      end
    end
  
    def destroy
      @documentacion_profesor = DocumentacionProfesor.find(params[:id])
      @documentacion_profesor.destroy
  
      redirect_to index_documentacion_profesores_path, notice: 'La documentación del profesor ha sido eliminada exitosamente.'
    end
  
    private
  
    def documentacion_profesor_params
      params.require(:documentacion_profesor).permit(:ID_DOCUMENTACION_PROFESOR, :ID_F_PROFESOR, :ID_F_TIPO_DOCUMENTACION_PROFESOR, :DOCUMENTO_PROFESOR, :FECHA_CREACION_DOCUMENTO, :FECHA_MODIFICACION_DOCUMENTO)
    end
  end
  