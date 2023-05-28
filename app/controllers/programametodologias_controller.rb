class ProgramametodologiasController < ApplicationController
    before_action :set_programametodologia, only: [:show, :update, :destroy]
  
    # GET /programametodologias
    def index
      @programametodologias = Programametodologia.all
      render json: @programametodologias
    end
  
    # GET /programametodologias/1
    def show
      render json: @programametodologia
    end
  
    # POST /programametodologias
    def create
      @programametodologia = Programametodologia.new(programametodologia_params)
  
      if @programametodologia.save
        render json: @programametodologia, status: :created, location: @programametodologia
      else
        render json: @programametodologia.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /programametodologias/1
    def update
      if @programametodologia.update(programametodologia_params)
        render json: @programametodologia
      else
        render json: @programametodologia.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /programametodologias/1
    def destroy
      @programametodologia.destroy
    end
  
    private
  
    # Obtiene el programametodologia por su ID
    def set_programametodologia
      @programametodologia = Programametodologia.find(params[:id])
    end
  
    # Solo permite los parámetros necesarios para la creación y actualización del programametodologia
    def programametodologia_params
      params.require(:programametodologia).permit(:ID_F_PROGRAMA_ASIGNATURA, :ID_F_METODOLOGIA, :ACTIVO_PROGRAMA_METODOLOGIA)
    end
  end
  