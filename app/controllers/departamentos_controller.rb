class DepartamentosController < ApplicationController
    before_action :set_departamento, only: [:show, :update, :destroy]
  
    # GET /departamentos
    def index
      @departamentos = Departamento.all
      render json: @departamentos
    end
  
    # GET /departamentos/:id
    def show
      render json: @departamento
    end
  
    # POST /departamentos
    def create
      @departamento = Departamento.new(departamento_params)
  
      if @departamento.save
        render json: @departamento, status: :created
      else
        render json: @departamento.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /departamentos/:id
    def update
      if @departamento.update(departamento_params)
        render json: @departamento
      else
        render json: @departamento.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /departamentos/:id
    def destroy
      @departamento.destroy
      head :no_content
    end
  
    private
  
    def set_departamento
      @departamento = Departamento.find(params[:id])
    end
  
    def departamento_params
      params.require(:departamento).permit(:DEPARTAMENTO)
    end
  end
  