class FuentebibliograficaController < ApplicationController
    before_action :set_fuentebibliografica, only: [:show, :edit, :update, :destroy]
  
    def index
      @fuentes_bibliograficas = Fuentebibliografica.all
    end
  
    def show
    end
  
    def new
      @fuentebibliografica = Fuentebibliografica.new
    end
  
    def create
      @fuentebibliografica = Fuentebibliografica.new(fuentebibliografica_params)
  
      if @fuentebibliografica.save
        redirect_to fuentebibliografica_path(@fuentebibliografica), notice: 'Fuente bibliográfica creada exitosamente.'
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @fuentebibliografica.update(fuentebibliografica_params)
        redirect_to fuentebibliografica_path(@fuentebibliografica), notice: 'Fuente bibliográfica actualizada exitosamente.'
      else
        render :edit
      end
    end
  
    def destroy
      @fuentebibliografica.destroy
      redirect_to fuentes_bibliograficas_path, notice: 'Fuente bibliográfica eliminada exitosamente.'
    end
  
    private
  
    def set_fuentebibliografica
      @fuentebibliografica = Fuentebibliografica.find(params[:id])
    end
  
    def fuentebibliografica_params
      params.require(:fuentebibliografica).permit(:ID_FUENTE_BIBLIOGRAFICA, :DIRECCION_FUENTE, :NOMBRE_FUENTE, :AUTOR, :ANIO_PUBLICACION)
    end
  end
  