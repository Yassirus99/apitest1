class PermisosController < ApplicationController
    before_action :set_permiso, only: [:show, :update, :destroy]
  
    # GET /permisos
    def index
      @permisos = Permiso.all
      render json: @permisos
    end
  
    # GET /permisos/1
    def show
      render json: @permiso
    end
  
    # POST /permisos
    def create
      @permiso = Permiso.new(permiso_params)
  
      if @permiso.save
        render json: @permiso, status: :created, location: @permiso
      else
        render json: @permiso.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /permisos/1
    def update
      if @permiso.update(permiso_params)
        render json: @permiso
      else
        render json: @permiso.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /permisos/1
    def destroy
      @permiso.destroy
    end
  
    private
  
    # Obtiene el permiso por su ID
    def set_permiso
      @permiso = Permiso.find(params[:id])
    end
  
    # Solo permite los parámetros necesarios para la creación y actualización del permiso
    def permiso_params
      params.require(:permiso).permit(:ID_F_ROL_USUARIO, :ID_F_RECURSO, :ACTIVO_PERMISO, :FECHA_CREACION, :FECHA_MODIFICACION)
    end
  end
  