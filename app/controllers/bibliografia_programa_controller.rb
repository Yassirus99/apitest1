class BibliografiaProgramasController < ApplicationController
    before_action :set_bibliografia_programa, only: [:show, :update, :destroy]
  
    # GET /bibliografia_programas
    def index
      @bibliografia_programas = BibliografiaPrograma.all
      render json: @bibliografia_programas
    end
  
    # GET /bibliografia_programas/1
    def show
      render json: @bibliografia_programa
    end
  
    # POST /bibliografia_programas
    def create
      @bibliografia_programa = BibliografiaPrograma.new(bibliografia_programa_params)
      if @bibliografia_programa.save
        render json: @bibliografia_programa, status: :created
      else
        render json: @bibliografia_programa.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /bibliografia_programas/1
    def update
      if @bibliografia_programa.update(bibliografia_programa_params)
        render json: @bibliografia_programa
      else
        render json: @bibliografia_programa.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /bibliografia_programas/1
    def destroy
      @bibliografia_programa.destroy
      head :no_content
    end
  
    private
  
    def set_bibliografia_programa
      @bibliografia_programa = BibliografiaPrograma.find(params[:id])
    end
  
    def bibliografia_programa_params
      params.require(:bibliografia_programa).permit(:ID_BIBLIOGRAFIA_PROGRAMA, :ID_F_PROGRAMA_ASIGNATURA, :ID_F_FUENTE_BIBLIOGRAFICA, :ACTIVO_BIBLIOGRAFIA_PROGRAMA)
    end
  end
  