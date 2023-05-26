class AreaConocimientosController < ApplicationController
    before_action :set_area_conocimiento, only: [:show, :update, :destroy]
  
    # GET /area_conocimientos
    def index
      @area_conocimientos = AreaConocimiento.all
      render json: @area_conocimientos
    end
  
    # GET /area_conocimientos/1
    def show
      render json: @area_conocimiento
    end
  
    # POST /area_conocimientos
    def create
      @area_conocimiento = AreaConocimiento.new(area_conocimiento_params)
  
      if @area_conocimiento.save
        render json: @area_conocimiento, status: :created, location: @area_conocimiento
      else
        render json: @area_conocimiento.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /area_conocimientos/1
    def update
      if @area_conocimiento.update(area_conocimiento_params)
        render json: @area_conocimiento
      else
        render json: @area_conocimiento.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /area_conocimientos/1
    def destroy
      @area_conocimiento.destroy
    end
  
    private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_area_conocimiento
      @area_conocimiento = AreaConocimiento.find(params[:id])
    end
  
    # Only allow a trusted parameter "white list" through.
    def area_conocimiento_params
      params.require(:area_conocimiento).permit(:ID_AREA_CONOCIMIENTO, :AREA_CONOCIMIENTO)
    end
  end
      