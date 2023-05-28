class PaisesController < ApplicationController
    before_action :set_pais, only: [:show, :update, :destroy]
  
    # GET /paises
    def index
      @paises = Pais.all
      render json: @paises
    end
  
    # GET /paises/1
    def show
      render json: @pais
    end
  
    # POST /paises
    def create
      @pais = Pais.new(pais_params)
  
      if @pais.save
        render json: @pais, status: :created, location: @pais
      else
        render json: @pais.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /paises/1
    def update
      if @pais.update(pais_params)
        render json: @pais
      else
        render json: @pais.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /paises/1
    def destroy
      @pais.destroy
    end
  
    private
  
    # Obtiene el país por su ID
    def set_pais
      @pais = Pais.find(params[:id])
    end
  
    # Solo permite los parámetros necesarios para la creación y actualización del país
    def pais_params
      params.require(:pais).permit(:PAIS)
    end
  end
  