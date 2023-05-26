class MaestriaasignaturasController < ApplicationController
    before_action :set_maestriaasignatura, only: [:show, :edit, :update, :destroy]
  
    # GET /maestriaasignaturas
    def index
      @maestriaasignaturas = Maestriaasignatura.all
    end
  
    # GET /maestriaasignaturas/1
    def show
        render json: @maestriaasignatura, status: :ok
      end
    
    # GET /maestriaasignaturas/new
    def new
      @maestriaasignatura = Maestriaasignatura.new
    end
  
    # GET /maestriaasignaturas/1/edit
    def edit
    end
  
    # POST /maestriaasignaturas
    def create
      @maestriaasignatura = Maestriaasignatura.new(maestriaasignatura_params)
  
      if @maestriaasignatura.save
        redirect_to @maestriaasignatura, notice: 'Maestriaasignatura was successfully created.'
      else
        render :new
      end
    end
  
    # PATCH/PUT /maestriaasignaturas/1
    def update
      if @maestriaasignatura.update(maestriaasignatura_params)
        redirect_to @maestriaasignatura, notice: 'Maestriaasignatura was successfully updated.'
      else
        render :edit
      end
    end
  
    # DELETE /maestriaasignaturas/1
    def destroy
      @maestriaasignatura.destroy
      redirect_to maestriaasignaturas_url, notice: 'Maestriaasignatura was successfully destroyed.'
    end
  
    private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_maestriaasignatura
      @maestriaasignatura = Maestriaasignatura.find(params[:id])
    end
  
    # Only allow a list of trusted parameters through.
    def maestriaasignatura_params
      params.require(:maestriaasignatura).permit(:ID_MAESTRIA_ASIGNATURA, :CODIGO_MAESTRIA, :ID_F_ASIGNATURA, :ID_F_CICLO, :ACTIVO_MAESTRIA_ASIGNATURA)
    end
  end
  