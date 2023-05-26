class ExpedienteAcademicoController < ApplicationController
    before_action :set_expediente_academico, only: [:show, :edit, :update, :destroy]
  
    def index
      @expediente_academicos = ExpedienteAcademico.all
    end
  
    def show
        render json: @expediente_academico, status: :ok
    end
  
    def new
      @expediente_academico = ExpedienteAcademico.new
    end
  
    def create
      @expediente_academico = ExpedienteAcademico.new(expediente_academico_params)
  
      if @expediente_academico.save
        redirect_to expediente_academico_path(@expediente_academico), notice: 'Expediente académico creado exitosamente.'
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @expediente_academico.update(expediente_academico_params)
        redirect_to expediente_academico_path(@expediente_academico), notice: 'Expediente académico actualizado exitosamente.'
      else
        render :edit
      end
    end
  
    def destroy
      @expediente_academico.destroy
      redirect_to expediente_academicos_path, notice: 'Expediente académico eliminado exitosamente.'
    end
  
    private
  
    def set_expediente_academico
      @expediente_academico = ExpedienteAcademico.find(params[:id])
    end
  
    def expediente_academico_params
      params.require(:expediente_academico).permit(:ID_EXPEDIENTE_ACADEMICO, :ID_EMPLEADO, :ID_PROFESOR, :ID_F_PROFESOR)
    end
  end
  