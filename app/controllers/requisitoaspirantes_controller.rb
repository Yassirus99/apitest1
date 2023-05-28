class RequisitoAspirantesController < ApplicationController
    before_action :set_requisito_aspirante, only: [:show, :update, :destroy]
  
    # GET /requisito_aspirantes
    def index
      @requisito_aspirantes = RequisitoAspirante.all
      render json: @requisito_aspirantes
    end
  
    # GET /requisito_aspirantes/1
    def show
      render json: @requisito_aspirante
    end
  
    # POST /requisito_aspirantes
    def create
      @requisito_aspirante = RequisitoAspirante.new(requisito_aspirante_params)
  
      if @requisito_aspirante.save
        render json: @requisito_aspirante, status: :created, location: @requisito_aspirante
      else
        render json: @requisito_aspirante.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /requisito_aspirantes/1
    def update
      if @requisito_aspirante.update(requisito_aspirante_params)
        render json: @requisito_aspirante
      else
        render json: @requisito_aspirante.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /requisito_aspirantes/1
    def destroy
      @requisito_aspirante.destroy
    end
  
    private
  
    # Obtiene el requisito aspirante por su ID
    def set_requisito_aspirante
      @requisito_aspirante = RequisitoAspirante.find(params[:id])
    end
  
    # Solo permite los parámetros necesarios para la creación y actualización del requisito aspirante
    def requisito_aspirante_params
      params.require(:requisito_aspirante).permit(:REQUISITO_PERFIL_ASPIRANTE, :DESCRIPCION, :ACTIVO_REQUISITO_ASPIRANTE)
    end
  end
  