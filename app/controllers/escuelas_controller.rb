class EscuelasController < ApplicationController
    def index
      @escuelas = Escuela.all
    end
  
    def show
      @escuela = Escuela.find(params[:id])
    end
  
    def new
      @escuela = Escuela.new
    end
  
    def create
      @escuela = Escuela.new(escuela_params)
  
      if @escuela.save
        redirect_to show_escuela_path(@escuela), notice: 'La escuela ha sido creada exitosamente.'
      else
        render :new
      end
    end
  
    def edit
      @escuela = Escuela.find(params[:id])
    end
  
    def update
      @escuela = Escuela.find(params[:id])
  
      if @escuela.update(escuela_params)
        redirect_to show_escuela_path(@escuela), notice: 'La escuela ha sido actualizada exitosamente.'
      else
        render :edit
      end
    end
  
    def destroy
      @escuela = Escuela.find(params[:id])
      @escuela.destroy
  
      redirect_to index_escuelas_path, notice: 'La escuela ha sido eliminada exitosamente.'
    end
  
    private
  
    def escuela_params
      params.require(:escuela).permit(:ID_ESCUELA, :NOMBRE_ESCUELA)
    end
  end
  