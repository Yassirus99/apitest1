class EstadoContratacionAspirantesController < ApplicationController
    before_action :set_estado_contratacion_aspirante, only: [:show, :edit, :update, :destroy]
  
    # GET /estado_contratacion_aspirantes
    def index
      @estado_contratacion_aspirantes = EstadoContratacionAspirante.all
    end
  
    # GET /estado_contratacion_aspirantes/1
    def show
    end
  
    # GET /estado_contratacion_aspirantes/new
    def new
      @estado_contratacion_aspirante = EstadoContratacionAspirante.new
    end
  
    # GET /estado_contratacion_aspirantes/1/edit
    def edit
    end
  
    # POST /estado_contratacion_aspirantes
    def create
      @estado_contratacion_aspirante = EstadoContratacionAspirante.new(estado_contratacion_aspirante_params)
  
      if @estado_contratacion_aspirante.save
        redirect_to @estado_contratacion_aspirante, notice: 'Estado de contratación del aspirante fue creado correctamente.'
      else
        render :new
      end
    end
  
    # PATCH/PUT /estado_contratacion_aspirantes/1
    def update
      if @estado_contratacion_aspirante.update(estado_contratacion_aspirante_params)
        redirect_to @estado_contratacion_aspirante, notice: 'Estado de contratación del aspirante fue actualizado correctamente.'
      else
        render :edit
      end
    end
  
    # DELETE /estado_contratacion_aspirantes/1
    def destroy
      @estado_contratacion_aspirante.destroy
      redirect_to estado_contratacion_aspirantes_url, notice: 'Estado de contratación del aspirante fue eliminado correctamente.'
    end
  
    private
  
    # Set estado_contratacion_aspirante
    def set_estado_contratacion_aspirante
      @estado_contratacion_aspirante = EstadoContratacionAspirante.find(params[:id])
    end
  
    # Only allow a list of trusted parameters through.
    def estado_contratacion_aspirante_params
      params.require(:estado_contratacion_aspirante).permit(:ID_ESTADO_CONTRATACION_ASPIRANTE, :ESTADO_CONTRATACION_ASPIRANTE, :ACTIVO_ESTADO_CONTRATACION)
    end
  end
  