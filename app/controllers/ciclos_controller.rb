class CiclosController < ApplicationController
    before_action :set_ciclo, only: [:show, :update, :destroy]
  
    # GET /ciclos
    def index
      @ciclos = Ciclo.all
      render json: @ciclos
    end
  
    # GET /ciclos/1
    def show
      render json: @ciclo
    end
  
    # POST /ciclos
    def create
      @ciclo = Ciclo.new(ciclo_params)
  
      if @ciclo.save
        render json: @ciclo, status: :created, location: @ciclo
      else
        render json: @ciclo.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /ciclos/1
    def update
      if @ciclo.update(ciclo_params)
        render json: @ciclo
      else
        render json: @ciclo.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /ciclos/1
    def destroy
      @ciclo.destroy
    end
  
    private
  
    # Set Ciclo by ID
    def set_ciclo
      @ciclo = Ciclo.find(params[:id])
    end
  
    # Only allow a trusted parameter "white list" through.
    def ciclo_params
      params.require(:ciclo).permit(:ID_CICLO, :NUMERO_CICLO)
    end
  end
  