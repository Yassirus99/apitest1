class CargoEmpleadosController < ApplicationController
    before_action :set_cargo_empleado, only: [:show, :update, :destroy]
  
    # GET /cargo_empleados
    def index
      @cargo_empleados = CargoEmpleado.all
      render json: @cargo_empleados
    end
  
    # GET /cargo_empleados/1
    def show
      render json: @cargo_empleado
    end
  
    # POST /cargo_empleados
    def create
      @cargo_empleado = CargoEmpleado.new(cargo_empleado_params)
  
      if @cargo_empleado.save
        render json: @cargo_empleado, status: :created
      else
        render json: @cargo_empleado.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /cargo_empleados/1
    def update
      if @cargo_empleado.update(cargo_empleado_params)
        render json: @cargo_empleado
      else
        render json: @cargo_empleado.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /cargo_empleados/1
    def destroy
      @cargo_empleado.destroy
      head :no_content
    end
  
    private
  
    def set_cargo_empleado
      @cargo_empleado = CargoEmpleado.find(params[:id])
    end
  
    def cargo_empleado_params
      params.permit(:ID_CARGO_EMPLEADO, :CARGO_EMPLEADO)
    end
  end
  