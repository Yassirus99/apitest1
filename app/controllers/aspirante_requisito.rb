# app/controllers/aspirante_requisitos_controller.rb
class AspiranteRequisitosController < ApplicationController
    before_action :set_aspirante_requisito, only: [:show, :update, :destroy]
  
    # GET /aspirante_requisitos
    def index
      @aspirante_requisitos = AspiranteRequisito.all
      render json: @aspirante_requisitos
    end
  
    # GET /aspirante_requisitos/1
    def show
      render json: @aspirante_requisito
    end
  
    # POST /aspirante_requisitos
    def create
      @aspirante_requisito = AspiranteRequisito.new(aspirante_requisito_params)
  
      if @aspirante_requisito.save
        render json: @aspirante_requisito, status: :created, location: @aspirante_requisito
      else
        render json: @aspirante_requisito.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /aspirante_requisitos/1
    def update
      if @aspirante_requisito.update(aspirante_requisito_params)
        render json: @aspirante_requisito
      else
        render json: @aspirante_requisito.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /aspirante_requisitos/1
    def destroy
      @aspirante_requisito.destroy
    end
  
    private
  
    # Obtiene el aspirante_requisito por su ID
    def set_aspirante_requisito
      @aspirante_requisito = AspiranteRequisito.find(params[:id])
    end
  
    # Parámetros permitidos
    def aspirante_requisito_params
      params.require(:aspirante_requisito).permit(:ID_PERFIL_ASPIRANTE_REQUISITO, :ID_F_PERFIL_ASPIRANTE, :ID_F_REQUISITO_ASPIRANTE, :ACTIVO_ASPIRANTE_REQUISITO)
    end
  end
  