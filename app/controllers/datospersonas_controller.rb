class DatosPersonasController < ApplicationController
    before_action :set_datos_persona, only: [:show, :update, :destroy]
  
    # GET /datos_personas
    def index
      @datos_personas = DatosPersona.all
      render json: @datos_personas
    end
  
    # GET /datos_personas/1
    def show
      render json: @datos_persona
    end
  
    # POST /datos_personas
    def create
      @datos_persona = DatosPersona.new(datos_persona_params)
  
      if @datos_persona.save
        render json: @datos_persona, status: :created, location: @datos_persona
      else
        render json: @datos_persona.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /datos_personas/1
    def update
      if @datos_persona.update(datos_persona_params)
        render json: @datos_persona
      else
        render json: @datos_persona.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /datos_personas/1
    def destroy
      @datos_persona.destroy
    end
  
    private
  
    def set_datos_persona
      @datos_persona = DatosPersona.find(params[:id])
    end
  
    def datos_persona_params
      params.require(:datos_persona).permit(:ID_PERSONA, :ID_EMPLEADO, :ID_F_PROFESOR, :ID_F_PAIS_NACIONALIDAD, :ID_F_DEPARTAMENTO_RESIDENCIA, :ID_F_MUNICIPIO_RESIDENCIA, :PRIMER_NOMBRE, :SEGUNDO_NOMBRE, :TERCER_NOMBRE, :PRIMER_APELLIDO, :SEGUNDO_APELLIDO, :DIRECCION_RESIDENCIA, :FECHA_NACIMIENTO, :CORREO_ELECTRONICO, :CORREO_ELECTRONICO_INSTITUCIONAL, :DUI, :NIT, :NUP, :NUMERO_PASAPORTE, :DOCUMENTO_PERSONAL, :TELEFONO_MOVIL, :TELEFONO_OFICINA)
    end
  end
  