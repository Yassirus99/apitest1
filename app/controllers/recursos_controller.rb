class RecursosController < ApplicationController
  # GET /recursos
  def index
    @recursos = Recurso.all
    render json: @recursos, status: :ok
  end

  # GET /recursos/:id
  def show
    @recurso = Recurso.find_by(ID_RECURSO: params[:id])

    # validación de existencia de recurso
    if @recurso.nil?
      render json: { error: "Recurso no encontrado" }, status: :not_found
      return
    end

    render json: @recurso, status: :ok
  end

  # POST /recursos
  def create
    recurso_params = params
      .require(:recurso)
      .permit(
        :ID_RECURSO,
        :ID_F_TIPO_RECURSO,
        :NOMBRE_RECURSO,
        :RUTA_RECURSO,
        :ACTIVO_RECURSO,
        :FECHA_CREACION,
        :FECHA_MODIFICACION,
      )

    @recurso = Recurso.new(recurso_params)
    if @recurso.save
      render json: @recurso, status: :created
    else
      render json: {
        errors: @recurso.errors,
        message: "El recurso no pudo ser creado"
      }, status: :unprocessable_entity
    end
  end

  # PUT /recursos/:id
  def update
    recurso_params = params
      .require(:recurso)
      .permit(
        :ID_F_TIPO_RECURSO,
        :NOMBRE_RECURSO,
        :RUTA_RECURSO,
        :ACTIVO_RECURSO,
        :FECHA_CREACION,
        :FECHA_MODIFICACION,
      )

    @recurso = Recurso.find_by(ID_RECURSO: params[:id])

    # validación de existencia de recurso
    if @recurso.nil?
      render json: { error: "Recurso no encontrado" }, status: :not_found
      return
    end

    if @recurso.update(recurso_params)
      render json: @recurso, status: :ok
    else
      render json: {
        errors: @recurso.errors,
        message: "El recurso no pudo ser actualizado"
      }, status: :unprocessable_entity
    end
  end

  # DELETE /recursos/:id
  def destroy
    @recurso = Recurso.find_by(ID_RECURSO: params[:id])

    # validación de existencia de recurso
    if @recurso.nil?
      render json: { error: "Recurso no encontrado" }, status: :not_found
      return
    end

    if @recurso.destroy
      render json: { message: "El recurso fue eliminado" }, status: :ok
    else
      render json: {
        errors: @recurso.errors,
        message: "El recurso no pudo ser eliminado"
      }, status: :unprocessable_entity
    end
  end
end
