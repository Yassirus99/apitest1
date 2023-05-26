class EstadoMaestriasController < ApplicationController
    before_action :set_estado_maestria, only: [:show, :edit, :update, :destroy]
  
    # GET /estado_maestrias
    def index
      @estado_maestrias = EstadoMaestria.all
    end
  
    # GET /estado_maestrias/1
    def show
    end
  
    # GET /estado_maestrias/new
    def new
      @estado_maestria = EstadoMaestria.new
    end
  
    # GET /estado_maestrias/1/edit
    def edit
    end
  
    # POST /estado_maestrias
    def create
      @estado_maestria = EstadoMaestria.new(estado_maestria_params)
  
      if @estado_maestria.save
        redirect_to @estado_maestria, notice: 'Estado de maestría fue creado correctamente.'
      else
        render :new
      end
    end
  
    # PATCH/PUT /estado_maestrias/1
    def update
      if @estado_maestria.update(estado_maestria_params)
        redirect_to @estado_maestria, notice: 'Estado de maestría fue actualizado correctamente.'
      else
        render :edit
      end
    end
  
    # DELETE /estado_maestrias/1
    def destroy
      @estado_maestria.destroy
      redirect_to estado_maestrias_url, notice: 'Estado de maestría fue eliminado correctamente.'
    end
  
    private
  
    # Set estado_maestria
    def set_estado_maestria
      @estado_maestria = EstadoMaestria.find(params[:id])
    end
  
    # Only allow a list of trusted parameters through.
    def estado_maestria_params
      params.require(:estado_maestria).permit(:ID_ESTADO_MAESTRIA, :ESTADO_MAESTRIA)
    end
  end
  