class MunicipiosController < ApplicationController
    before_action :set_municipio, only: [:show, :update, :destroy]
  
    # GET /municipios
    def index
      @municipios = Municipio.all
      render json: @municipios
    end
  
    # GET /municipios/1
    def show
      render json: @municipio
    end
  
    # POST /municipios
    def create
      @municipio = Municipio.new(municipio_params)
  
      if @municipio.save
        render json: @municipio, status: :created, location: @municipio
      else
        render json: @municipio.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /municipios/1
    def update
      if @municipio.update(municipio_params)
        render json: @municipio
      else
        render json: @municipio.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /municipios/1
    def destroy
      @municipio.destroy
    end
  
    private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_municipio
      @municipio = Municipio.find(params[:id])
    end
  
    # Only allow a trusted parameter "white list" through.
    def municipio_params
      params.require(:municipio).permit(:ID_MUNICIPIO, :ID_F_DEPARTAMENTO, :MUNICIPIO)
    end
  end
  