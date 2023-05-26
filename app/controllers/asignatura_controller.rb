# app/controllers/asignaturas_controller.rb
class AsignaturasController < ApplicationController
    before_action :set_asignatura, only: [:show, :update, :destroy]
  
    # GET /asignaturas
    def index
      @asignaturas = Asignatura.all
      render json: @asignaturas
    end
  
    # GET /asignaturas/:id
    def show
      render json: @asignatura
    end
  
    # POST /asignaturas
    def create
      @asignatura = Asignatura.new(asignatura_params)
      if @asignatura.save
        render json: @asignatura, status: :created
      else
        render json: @asignatura.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH /asignaturas/:id
    def update
      if @asignatura.update(asignatura_params)
        render json: @asignatura
      else
        render json: @asignatura.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /asignaturas/:id
    def destroy
      @asignatura.destroy
      head :no_content
    end
  
    private
  
    def set_asignatura
      @asignatura = Asignatura.find(params[:id])
    end
  
    def asignatura_params
      params.require(:asignatura).permit(:ID_ASIGNATURA, :CODIGO_ASIGNATURA, :NOMBRE_ASIGNATURA, :NUMERO_CORRELATIVO, :UNIDADES_VALORATIVAS)
    end
  end
  