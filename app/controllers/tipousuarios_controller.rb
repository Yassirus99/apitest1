class TipousuariosController < ApplicationController
  def index
    @tipousuarios = Tipousuario.all
    render json: @tipousuarios, status: :ok
  end

  def show
    @tipousuario = Tipousuario.find_by(ID_TIPO_USUARIO: params[:id])
    # validacion de existencia de tipo usuario
    if @tipousuario.nil?
      render json: {error: "Tipo de usuario no encontrado"}, status: :not_found
      return
    end

    # Devuelve el tipo de usuario
    render json: @tipousuario, status: :ok
  end
end
