class EstadoofertacontratacionsController < ApplicationController
    before_action :set_estado_oferta_contratacion, only: [:show, :update, :destroy]
  
    # GET /estadoofertacontratacions
    def index
      @estadoofertacontratacions = Estadoofertacontratacion.all
      render json: @estadoofertacontratacions
    end
  
    # GET /estadoofertacontratacions/:id
    def show
      render json: @estadoofertacontratacion
    end
  
    # POST /estadoofertacontratacions
    def create
      @estadoofertacontratacion = Estadoofertacontratacion.new(estadoofertacontratacion_params)
      if @estadoofertacontratacion.save
        render json: @estadoofertacontratacion, status: :created
      else
        render json: @estadoofertacontratacion.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH /estadoofertacontratacions/:id
    def update
      if @estadoofertacontratacion.update(estadoofertacontratacion_params)
        render json: @estadoofertacontratacion
      else
        render json: @estadoofertacontratacion.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /estadoofertacontratacions/:id
    def destroy
      @estadoofertacontratacion.destroy
      head :no_content
    end
  
    private
  
    def set_estado_oferta_contratacion
      @estadoofertacontratacion = Estadoofertacontratacion.find(params[:id])
    end
  
    def estadoofertacontratacion_params
      params.permit(:ESTADO_OFERTA_CONTRATACION)
    end
  end
  