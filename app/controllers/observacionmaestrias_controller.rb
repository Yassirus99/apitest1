class ObservacionmaestriasController < ApplicationController
    before_action :set_observacionmaestria, only: [:show, :update, :destroy]
  
    # GET /observacionmaestrias
    def index
      @observacionmaestrias = Observacionmaestria.all

      @observacionmaestrias = @observacionmaestrias.as_json(
        include: [
          :estado,
          :maestria
        ]
      )

      render json: @observacionmaestrias
    end
  
    # GET /observacionmaestrias/1
    def show
      @observacionmaestria = @observacionmaestria.as_json(
        include: [
          :estado,
          :maestria
        ]
      )

      render json: @observacionmaestria
    end
  
    # POST /observacionmaestrias
    def create
      @observacionmaestria = Observacionmaestria.new(observacionmaestria_params)
  
      if @observacionmaestria.save
        render json: @observacionmaestria, status: :created, location: @observacionmaestria
      else
        render json: @observacionmaestria.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /observacionmaestrias/1
    def update
      if @observacionmaestria.update(observacionmaestria_params)
        render json: @observacionmaestria
      else
        render json: @observacionmaestria.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /observacionmaestrias/1
    def destroy
      @observacionmaestria.destroy
    end
  
    private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_observacionmaestria
      @observacionmaestria = Observacionmaestria.find(params[:id])
    end
  
    # Only allow a trusted parameter "white list" through.
    def observacionmaestria_params
      params.require(:observacionmaestria).permit(:ID_OBSERVACION_MAESTRIA, :OBSERVACION_MAESTRIA, :ID_F_MAESTRIA, :ID_F_ESTADO_OBSERVACION_MAESTRIA)
    end
  end
  