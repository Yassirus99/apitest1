class PlanestudiosController < ApplicationController
    before_action :set_planestudio, only: [:show, :update, :destroy]
  
    # GET /planestudios
    def index
      @planestudios = Planestudios.all
      render json: @planestudios
    end
  
    # GET /planestudios/1
    def show
      render json: @planestudio
    end
  
    # POST /planestudios
    def create
      @planestudio = Planestudios.new(planestudio_params)
  
      if @planestudio.save
        render json: @planestudio, status: :created, location: @planestudio
      else
        render json: @planestudio.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /planestudios/1
    def update
      if @planestudio.update(planestudio_params)
        render json: @planestudio
      else
        render json: @planestudio.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /planestudios/1
    def destroy
      @planestudio.destroy
    end
  
    private
  
    # Obtiene el plan de estudios por su ID
    def set_planestudio
      @planestudio = Planestudios.find(params[:id])
    end
  
    # Solo permite los parámetros necesarios para la creación y actualización del plan de estudios
    def planestudio_params
      params.require(:planestudio).permit(:CODIGO_MAESTRIA, :ID_MODALIDAD, :ID_F_MODALIDAD, :ID_F_ESTADO_PLAN_ESTUDIO, :ID_F_EMPLEADO_CREACION, :CUM_MINIMO, :NUMERO_ASIGNATURAS, :DURACION_CARRERA_ANIO, :DURACION_CARRERA_CICLOS, :NOMBRE_TITULO_CARRERA, :FECHA_CREACION_PLAN, :FECHA_MODIFICACION_PLAN)
    end
  end
  