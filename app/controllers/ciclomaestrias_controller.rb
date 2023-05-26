class CicloMaestriasController < ApplicationController
    before_action :set_ciclo_maestria, only: [:show, :update, :destroy]
  
    # GET /ciclo_maestrias
    def index
      @ciclo_maestrias = CicloMaestria.all
      render json: @ciclo_maestrias
    end
  
    # GET /ciclo_maestrias/1
    def show
      render json: @ciclo_maestria
    end
  
    # POST /ciclo_maestrias
    def create
      @ciclo_maestria = CicloMaestria.new(ciclo_maestria_params)
  
      if @ciclo_maestria.save
        render json: @ciclo_maestria, status: :created
      else
        render json: @ciclo_maestria.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /ciclo_maestrias/1
    def update
      if @ciclo_maestria.update(ciclo_maestria_params)
        render json: @ciclo_maestria
      else
        render json: @ciclo_maestria.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /ciclo_maestrias/1
    def destroy
      @ciclo_maestria.destroy
      head :no_content
    end
  
    private
  
    def set_ciclo_maestria
      @ciclo_maestria = CicloMaestria.find(params[:id])
    end
  
    def ciclo_maestria_params
      params.require(:ciclo_maestria).permit(:ID_CICLO_ASIGNATURA, :CODIGO_MAESTRIA, :ID_F_CICLO)
    end
  end
  