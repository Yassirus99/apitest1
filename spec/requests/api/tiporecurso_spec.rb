require 'swagger_helper'

RSpec.describe 'Tipo Recurso', type: :request do
  path '/tiporecursos' do
    get 'Lista de Tipos de Recursos' do
      tags 'Tipo Recurso'
      produces 'application/json', 'text/json', 'text/plain'
      
      response '200', 'Ok', swagger_strict_schema_validation: true do
        schema type: :array,
          items: {
            '$ref': '#/components/schemas/tiporecurso'
          }
        run_test!
      end

      response '500', 'Error interno del servidor' do
        run_test!
      end
    end
  end

  path '/tiporecursos/{id}' do
    get 'Obtener el Tipo de Recurso por id' do
      tags 'Tipo Recurso'
      produces 'application/json', 'text/json', 'text/plain'
      parameter name: :id, in: :path, type: :integer

      response '200', 'Ok', swagger_strict_schema_validation: true do
        schema '$ref': '#/components/schemas/tiporecurso'
        run_test!
      end

      response '404', 'Recurso no encontrado' do
        run_test!
      end
    end
  end
end
