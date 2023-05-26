class TiporecursosController < ApplicationController
  def index
    @tipo_recursos = Tiporecurso.all
    render json: @tipo_recursos, status: :ok
  end

  def show
    @tipo_recurso = Tiporecurso.find_by(ID_TIPO_RECURSO: params[:id])
    # validacion de existencia de tipo usuario
    if @tipo_recurso.nil?
      render json: {error: "Tipo de recurso no encontrado"}, status: :not_found
      return
    end

    # Devuelve el tipo de recurso
    render json: @tipo_recurso, status: :ok
  end
end
