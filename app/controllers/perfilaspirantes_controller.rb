class PerfilaspirantesController < ApplicationController
    before_action :set_perfilaspirante, only: [:show, :update, :destroy]
  
    # GET /perfilaspirantes
    def index
      @perfilaspirantes = Perfilaspirante.all
      render json: @perfilaspirantes
    end
  
    # GET /perfilaspirantes/1
    def show
      render json: @perfilaspirante
    end
  
    # POST /perfilaspirantes
    def create
      @perfilaspirante = Perfilaspirante.new(perfilaspirante_params)
  
      if @perfilaspirante.save
        render json: @perfilaspirante, status: :created, location: @perfilaspirante
      else
        render json: @perfilaspirante.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /perfilaspirantes/1
    def update
      if @perfilaspirante.update(perfilaspirante_params)
        render json: @perfilaspirante
      else
        render json: @perfilaspirante.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /perfilaspirantes/1
    def destroy
      @perfilaspirante.destroy
    end
  
    private
  
    # Obtiene el perfil del aspirante por su ID
    def set_perfilaspirante
      @perfilaspirante = Perfilaspirante.find(params[:id])
    end
  
    # Solo permite los parámetros necesarios para la creación y actualización del perfil del aspirante
    def perfilaspirante_params
      params.require(:perfilaspirante).permit(:CODIGO_MAESTRIA, :FECHA_CREACION, :FECHA_MODIFICACION)
    end
  end
  