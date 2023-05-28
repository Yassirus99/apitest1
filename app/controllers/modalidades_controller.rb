class ModalidadesController < ApplicationController
    before_action :set_modalidad, only: [:show, :update, :destroy]
  
    # GET /modalidades
    def index
      @modalidades = Modalidad.all
      render json: @modalidades
    end
  
    # GET /modalidades/1
    def show
      render json: @modalidad
    end
  
    # POST /modalidades
    def create
      @modalidad = Modalidad.new(modalidad_params)
  
      if @modalidad.save
        render json: @modalidad, status: :created, location: @modalidad
      else
        render json: @modalidad.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /modalidades/1
    def update
      if @modalidad.update(modalidad_params)
        render json: @modalidad
      else
        render json: @modalidad.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /modalidades/1
    def destroy
      @modalidad.destroy
    end
  
    private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_modalidad
      @modalidad = Modalidad.find(params[:id])
    end
  
    # Only allow a trusted parameter "white list" through.
    def modalidad_params
      params.require(:modalidad).permit(:ID_MODALIDAD, :MODALIDAD, :ACTIVO_MODALIDAD)
    end
  end
  