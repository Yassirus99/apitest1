class ObservacionplanestudiosController < ApplicationController
    before_action :set_observacionplanestudio, only: [:show, :update, :destroy]
  
    # GET /observacionplanestudios
    def index
      @observacionplanestudios = Observacionplanestudio.all
      render json: @observacionplanestudios
    end
  
    # GET /observacionplanestudios/1
    def show
      render json: @observacionplanestudio
    end
  
    # POST /observacionplanestudios
    def create
      @observacionplanestudio = Observacionplanestudio.new(observacionplanestudio_params)
  
      if @observacionplanestudio.save
        render json: @observacionplanestudio, status: :created, location: @observacionplanestudio
      else
        render json: @observacionplanestudio.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /observacionplanestudios/1
    def update
      if @observacionplanestudio.update(observacionplanestudio_params)
        render json: @observacionplanestudio
      else
        render json: @observacionplanestudio.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /observacionplanestudios/1
    def destroy
      @observacionplanestudio.destroy
    end
  
    private
  
    def set_observacionplanestudio
      @observacionplanestudio = Observacionplanestudio.find(params[:id])
    end
  
    def observacionplanestudio_params
      params.require(:observacionplanestudio).permit(:ID_F_ESTADO_OBSERVACION_PLAN_ESTUDIO, :OBSERVACION_PLAN_ESTUDIO, :ID_F_PLAN_ESTUDIOS)
    end
  end
  