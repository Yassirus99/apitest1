class MetodologiaEnsenanzasController < ApplicationController
    before_action :set_metodologia_ensenanza, only: [:show, :update, :destroy]
  
    # GET /metodologia_ensenanzas
    def index
      @metodologia_ensenanzas = MetodologiaEnsenanza.all
      render json: @metodologia_ensenanzas
    end
  
    # GET /metodologia_ensenanzas/1
    def show
      render json: @metodologia_ensenanza
    end
  
    # POST /metodologia_ensenanzas
    def create
      @metodologia_ensenanza = MetodologiaEnsenanza.new(metodologia_ensenanza_params)
  
      if @metodologia_ensenanza.save
        render json: @metodologia_ensenanza, status: :created, location: @metodologia_ensenanza
      else
        render json: @metodologia_ensenanza.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /metodologia_ensenanzas/1
    def update
      if @metodologia_ensenanza.update(metodologia_ensenanza_params)
        render json: @metodologia_ensenanza
      else
        render json: @metodologia_ensenanza.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /metodologia_ensenanzas/1
    def destroy
      @metodologia_ensenanza.destroy
    end
  
    private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_metodologia_ensenanza
      @metodologia_ensenanza = MetodologiaEnsenanza.find(params[:id])
    end
  
    # Only allow a trusted parameter "white list" through.
    def metodologia_ensenanza_params
      params.require(:metodologia_ensenanza).permit(:NOMBRE_METODOLOGIA, :ACTIVO_METODOLOGIA)
    end
  end
  