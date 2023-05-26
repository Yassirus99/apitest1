class DetalleContratacionesController < ApplicationController
    before_action :set_detalle_contratacion, only: [:show, :update, :destroy]
  
    # GET /detalle_contrataciones
    def index
      @detalle_contrataciones = DetalleContratacion.all
      render json: @detalle_contrataciones
    end
  
    # GET /detalle_contrataciones/:id
    def show
      render json: @detalle_contratacion
    end
  
    # POST /detalle_contrataciones
    def create
      @detalle_contratacion = DetalleContratacion.new(detalle_contratacion_params)
  
      if @detalle_contratacion.save
        render json: @detalle_contratacion, status: :created
      else
        render json: @detalle_contratacion.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /detalle_contrataciones/:id
    def update
      if @detalle_contratacion.update(detalle_contratacion_params)
        render json: @detalle_contratacion
      else
        render json: @detalle_contratacion.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /detalle_contrataciones/:id
    def destroy
      @detalle_contratacion.destroy
      head :no_content
    end
  
    private
  
    def set_detalle_contratacion
      @detalle_contratacion = DetalleContratacion.find(params[:id])
    end
  
    def detalle_contratacion_params
      params.require(:detalle_contratacion).permit(:ID_COHORTE_ASPIRANTE_PROFESOR, :MONTO_PAGO_HORA, :FECHA_CONTRATACION)
    end
  end
  