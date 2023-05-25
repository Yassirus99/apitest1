class CiclomaestriaController < ApplicationController
  before_action :set_ciclomaestria, only: [:show, :update, :destroy]

  # GET /ciclomaestria
  def index
    @ciclomaestria = Ciclomaestria.all
    render json: @ciclomaestria, status: :ok
  end

  # GET /ciclomaestria/1
  def show
    render json: @ciclomaestria, status: :ok
  end

  # POST /ciclomaestria
  def create
    @ciclomaestria = Ciclomaestria.new(ciclomaestria_params)

    if @ciclomaestria.save
      render json: @ciclomaestria, status: :created, location: @ciclomaestria
    else
      render json: @ciclomaestria.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ciclomaestria/1
  def update
    if @ciclomaestria.update(ciclomaestria_params)
      render json: @ciclomaestria, status: :ok
    else
      render json: @ciclomaestria.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ciclomaestria/1
  def destroy
    @ciclomaestria.destroy
    head :no_content
  end

  private

  def set_ciclomaestria
    @ciclomaestria = Ciclomaestria.find(params[:id])
  end

  def ciclomaestria_params
    params.require(:ciclomaestria).permit(:ID_CICLO_ASIGNATURA, :CODIGO_MAESTRIA)
  end
end
