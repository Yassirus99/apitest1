class AplicacionOfertaAspirantesController < ApplicationController
    before_action :set_aplicacion_oferta_aspirante, only: [:show, :update, :destroy]
  
    # GET /aplicacion_oferta_aspirantes
    def index
      @aplicacion_oferta_aspirantes = AplicacionOfertaAspirante.all
      render json: @aplicacion_oferta_aspirantes
    end
  
    # GET /aplicacion_oferta_aspirantes/:id
    def show
      render json: @aplicacion_oferta_aspirante
    end
  
    # POST /aplicacion_oferta_aspirantes
    def create
      @aplicacion_oferta_aspirante = AplicacionOfertaAspirante.new(aplicacion_oferta_aspirante_params)
  
      if @aplicacion_oferta_aspirante.save
        render json: @aplicacion_oferta_aspirante, status: :created
      else
        render json: @aplicacion_oferta_aspirante.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /aplicacion_oferta_aspirantes/:id
    def update
      if @aplicacion_oferta_aspirante.update(aplicacion_oferta_aspirante_params)
        render json: @aplicacion_oferta_aspirante
      else
        render json: @aplicacion_oferta_aspirante.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /aplicacion_oferta_aspirantes/:id
    def destroy
      @aplicacion_oferta_aspirante.destroy
      head :no_content
    end
  
    private
  
    def set_aplicacion_oferta_aspirante
      @aplicacion_oferta_aspirante = AplicacionOfertaAspirante.find(params[:id])
    end
  
    def aplicacion_oferta_aspirante_params
      params.permit(:ID_COHORTE_ASPIRANTE_PROFESOR, :ID_OFERTA_CONTRATACION, :ID_F_ESTADO_CONTRATACION_ASPIRANTE, :ID_F_ASPIRANTE_PROFESOR, :ACTIVO_COHORTE_ASPIRANTE)
    end
  end
  