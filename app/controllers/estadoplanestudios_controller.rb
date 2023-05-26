class EstadoplanestudiosController < ApplicationController
    before_action :set_estado_plan_estudio, only: [:show, :update, :destroy]
  
    # GET /estadoplanestudios
    def index
      @estadoplanestudios = Estadoplanestudio.all
      render json: @estadoplanestudios
    end
  
    # GET /estadoplanestudios/:id
    def show
      render json: @estado_plan_estudio
    end
  
    # POST /estadoplanestudios
    def create
      @estado_plan_estudio = Estadoplanestudio.new(estado_plan_estudio_params)
      if @estado_plan_estudio.save
        render json: @estado_plan_estudio, status: :created
      else
        render json: @estado_plan_estudio.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH /estadoplanestudios/:id
    def update
      if @estado_plan_estudio.update(estado_plan_estudio_params)
        render json: @estado_plan_estudio
      else
        render json: @estado_plan_estudio.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /estadoplanestudios/:id
    def destroy
      @estado_plan_estudio.destroy
      head :no_content
    end
  
    private
  
    def set_estado_plan_estudio
      @estado_plan_estudio = Estadoplanestudio.find(params[:id])
    end
  
    def estado_plan_estudio_params
      params.permit(:ID_ACTIVIDAD_EVALUADA, :ESTADO_PLAN_ESTUDIO, :DESCRIPCION_ESTADO_PLAN_ESTUDIO)
    end
  end
  