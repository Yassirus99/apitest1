class MaestriaController < ApplicationController
  before_action :set_maestria, only: [:show, :update, :destroy]

  # GET /maestria
  def index
    @maestria = Maestria.all
    render json: @maestria, status: :ok
  end

  # GET /maestria/1
  def show
    render json: @maestria, status: :ok
  end

  # POST /maestria
  def create
    @maestria = Maestria.new(maestria_params)

    if @maestria.save
      render json: @maestria, status: :created, location: @maestria
    else
      render json: @maestria.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /maestria/1
  def update
    if @maestria.update(maestria_params)
      render json: @maestria, status: :ok
    else
      render json: @maestria.errors, status: :unprocessable_entity
    end
  end

  # DELETE /maestria/1
  def destroy
    @maestria.destroy
    head :no_content
  end

  private

  def set_maestria
    @maestria = Maestria.find(params[:id])
  end

  def maestria_params
    params.require(:maestria).permit(:CODIGO_MAESTRIA, :ID_EMPLEADO, :ID_F_COORDINADOR_ACADEMICO, :ID_F_ESCUELA, :NOMBRE_MAESTRIA, :DESCRIPCION)
  end
end
