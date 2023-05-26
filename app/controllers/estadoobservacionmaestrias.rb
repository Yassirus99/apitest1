class EstadoObservacionMaestriasController < ApplicationController
    before_action :set_estado_observacion_maestria, only: [:show, :update, :destroy]
  
    # GET /estado_observacion_maestrias
    def index
      @estado_observacion_maestrias = EstadoObservacionMaestria.all
      render json: @estado_observacion_maestrias
    end
  
    # GET /estado_observacion_maestrias/:id
    def show
      render json: @estado_observacion_maestria
    end
  
    # POST /estado_observacion_maestrias
    def create
      @estado_observacion_maestria = EstadoObservacionMaestria.new(estado_observacion_maestria_params)
      if @estado_observacion_maestria.save
        render json: @estado_observacion_maestria, status: :created
      else
        render json: @estado_observacion_maestria.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH /estado_observacion_maestrias/:id
    def update
      if @estado_observacion_maestria.update(estado_observacion_maestria_params)
        render json: @estado_observacion_maestria
      else
        render json: @estado_observacion_maestria.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /estado_observacion_maestrias/:id
    def destroy
      @estado_observacion_maestria.destroy
      head :no_content
    end
  
    private
  
    def set_estado_observacion_maestria
      @estado_observacion_maestria = EstadoObservacionMaestria.find(params[:id])
    end
  
    def estado_observacion_maestria_params
      params.permit(:ESTADO_OBSERVACION_MAESTRIA)
    end
  end
  