class OfertacontratacionesController < ApplicationController
    before_action :set_ofertacontratacion, only: [:show, :update, :destroy]
  
    # GET /ofertacontrataciones
    def index
      @ofertacontrataciones = Ofertacontratacion.all
      render json: @ofertacontrataciones
    end
  
    # GET /ofertacontrataciones/1
    def show
      render json: @ofertacontratacion
    end
  
    # POST /ofertacontrataciones
    def create
      @ofertacontratacion = Ofertacontratacion.new(ofertacontratacion_params)
  
      if @ofertacontratacion.save
        render json: @ofertacontratacion, status: :created, location: @ofertacontratacion
      else
        render json: @ofertacontratacion.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /ofertacontrataciones/1
    def update
      if @ofertacontratacion.update(ofertacontratacion_params)
        render json: @ofertacontratacion
      else
        render json: @ofertacontratacion.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /ofertacontrataciones/1
    def destroy
      @ofertacontratacion.destroy
    end
  
    private
  
    # Obtiene la oferta de contratación por su ID
    def set_ofertacontratacion
      @ofertacontratacion = Ofertacontratacion.find(params[:id])
    end
  
    # Solo permite los parámetros necesarios para la creación y actualización de la oferta de contratación
    def ofertacontratacion_params
      params.require(:ofertacontratacion).permit(:ID_COHORTE, :ID_MAESTRIA_ASIGNATURA, :ID_F_MAESTRIA_ASIGNATURA, :ID_F_COHORTE, :ID_F_ESTADO_OFERTA, :FECHA_INICIO_OFERTA, :FECHA_FIN_OFERTA)
    end
  end
  