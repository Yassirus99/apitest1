class CohortesController < ApplicationController
    before_action :set_cohorte, only: [:show, :update, :destroy]
  
    # GET /cohortes
    def index
      @cohortes = Cohorte.all
      render json: @cohortes
    end
  
    # GET /cohortes/1
    def show
      render json: @cohorte
    end
  
    # POST /cohortes
    def create
      @cohorte = Cohorte.new(cohorte_params)
  
      if @cohorte.save
        render json: @cohorte, status: :created, location: @cohorte
      else
        render json: @cohorte.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /cohortes/1
    def update
      if @cohorte.update(cohorte_params)
        render json: @cohorte
      else
        render json: @cohorte.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /cohortes/1
    def destroy
      @cohorte.destroy
    end
  
    private
  
    def set_cohorte
      @cohorte = Cohorte.find(params[:id])
    end
  
    def cohorte_params
      params.require(:cohorte).permit(:ID_COHORTE, :CODIGO_MAESTRIA, :ANIO_PROMEDIO_INGRESO, :ANIO_PROMEDIO_TITULACION)
    end
  end
  