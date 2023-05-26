class RequisitosController < ApplicationController
    before_action :set_requisito, only: [:show, :update, :destroy]
  
    # GET /requisitos
    def index
      @requisitos = Requisito.all
      render json: @requisitos
    end
  
    # GET /requisitos/1
    def show
      render json: @requisito
    end
  
    # POST /requisitos
    def create
      @requisito = Requisito.new(requisito_params)
  
      if @requisito.save
        render json: @requisito, status: :created, location: @requisito
      else
        render json: @requisito.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /requisitos/1
    def update
      if @requisito.update(requisito_params)
        render json: @requisito
      else
        render json: @requisito.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /requisitos/1
    def destroy
      @requisito.destroy
    end
  
    private
  
    # Obtiene el requisito por su ID
    def set_requisito
      @requisito = Requisito.find(params[:id])
    end
  
    # Solo permite los parámetros necesarios para la creación y actualización del requisito
    def requisito_params
      params.require(:requisito).permit(:ID_MAESTRIA_ASIGNATURA, :MAE_ID_MAESTRIA_ASIGNATURA, :ID_F_ASIGNATURA, :ID_F_ASIGNATURA_REQUISITO, :ACTIVO_REQUISITO_ASIGNATURA)
    end
  end
  