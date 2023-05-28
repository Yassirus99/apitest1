class GradoacademicoController < ApplicationController
    before_action :set_gradoacademico, only: [:show, :edit, :update, :destroy]
  
    def index
      @grados_academicos = Gradoacademico.all
    end
  
    def show
      render json: @gradoacademico, status: :ok
    end
  
    def new
      @gradoacademico = Gradoacademico.new
    end
  
    def create
      @gradoacademico = Gradoacademico.new(gradoacademico_params)
  
      if @gradoacademico.save
        redirect_to gradoacademico_path(@gradoacademico), notice: 'Grado académico creado exitosamente.'
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @gradoacademico.update(gradoacademico_params)
        redirect_to gradoacademico_path(@gradoacademico), notice: 'Grado académico actualizado exitosamente.'
      else
        render :edit
      end
    end
  
    def destroy
      @gradoacademico.destroy
      redirect_to grados_academicos_path, notice: 'Grado académico eliminado exitosamente.'
    end
  
    private
  
    def set_gradoacademico
      @gradoacademico = Gradoacademico.find(params[:id])
    end
  
    def gradoacademico_params
      params.require(:gradoacademico).permit(:ID_GRADO_ACADEMICO, :ID_EXPEDIENTE_ACADEMICO, :GRADO_ACADEMICO, :DESCRIPCION_GRADO_ACADEMICO, :DOCUMENTO_GRADO_ACADEMICO, :ACTIVO_GRADO_ACADEMICO, :FECHA_CREACION, :FECHA_MODIFICACION)
    end
  end
  