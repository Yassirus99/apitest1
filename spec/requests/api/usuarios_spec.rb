require 'swagger_helper'

RSpec.describe 'Usuarios', type: :request do
  path '/usuarios' do
    post 'Crear usuario' do
      tags 'Usuarios'
      consumes 'application/json'
      produces 'application/json', 'text/json', 'text/plain'
      parameter name: :usuario, in: :body, schema: {
        oneOf: [
          { '$ref' => '#/components/schemas/usuario' }
        ]
      }

      response '201', 'Uusario creado', swagger_strict_schema_validation: true do
        schema oneOf: [
          { '$ref' => '#/components/schemas/usuario' }
        ]
        run_test!
      end

      response '500', 'Error interno del servidor' do
        run_test!
      end

    end

    get 'Lista de usuarios' do
      tags 'Usuarios'
      produces 'application/json', 'text/json', 'text/plain'
      parameter name: :usuario, in: :query, schema: {
        '$ref' => '#/components/schemas/usuario'
      }

      response '200', 'Ok', swagger_strict_schema_validation: true do
        schema type: :array,
          items: {
            '$ref': '#/components/schemas/usuario'
          }
        run_test!
      end

      response '500', 'Error interno del servidor' do
        run_test!
      end

    end
  end

  path '/usuarios/{id}' do
    get 'Obtener usuario por id' do
      tags 'Usuarios'
      # consumes 'application/json'
      produces 'application/json', 'text/json', 'text/plain'
      parameter name: :id, in: :path, type: :integer

      response '200', 'Ok', swagger_strict_schema_validation: true do
        schema '$ref': '#/components/schemas/usuario'
        run_test!
      end

      response '404', 'Usuario no encontrado' do
        run_test!
      end

      response '500', 'Error interno del servidor' do
        run_test!
      end

    end

    put 'Actualizar usuario por id' do
      tags 'Usuarios'
      consumes 'application/json'
      produces 'application/json', 'text/json', 'text/plain'
      parameter name: :id, in: :path, type: :integer
      parameter name: :usuario, in: :body, schema: {
        oneOf: [
          { '$ref' => '#/components/schemas/usuario' }
        ]
      }
      response '200', 'Ok', swagger_strict_schema_validation: true do
        schema '$ref': '#/components/schemas/usuario'
        run_test!
      end

      response '404', 'Usuario no encontrado' do
        run_test!
      end

      response '500', 'Error interno del servidor' do
        run_test!
      end
    end

    patch 'Actualizar usuario por id' do
      tags 'Usuarios'
      consumes 'application/json'
      produces 'application/json', 'text/json', 'text/plain'
      parameter name: :id, in: :path, type: :integer
      parameter name: :usuario, in: :body, schema: {
        oneOf: [
          { '$ref' => '#/components/schemas/usuario' }
        ]
      }
      response '200', 'Ok', swagger_strict_schema_validation: true do
        schema '$ref': '#/components/schemas/usuario'
        run_test!
      end

      response '404', 'Usuario no encontrado' do
        run_test!
      end

      response '500', 'Error interno del servidor' do
        run_test!
      end
    end

    delete 'Eliminar usuario por id' do
      tags 'Usuarios'
      parameter name: :id, in: :path, type: :integer

      response '204', 'Usuario eliminado' do
        run_test!
      end

      response '404', 'Usuario no encontrado' do
        run_test!
      end

      response '500', 'Error interno del servidor' do
        run_test!
      end
    end
  end
end
