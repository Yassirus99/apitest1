class AuthenticationController < ApplicationController

  skip_before_action :authenticate_request, only: [:authenticate]

  def authenticate
    user = Usuario.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      token = JsonwebToken.encode(user_id: user.id)
      render json: { token: token }, status: :ok
    else
      render json: { error: 'Correo electrónico o contraseña incorrectos' }, status: :unauthorized
    end
  end

  private

  def encode_token(payload)
    JWT.encode(payload, Rails.application.secrets.secret_key_base)
  end

end

  /
  # POST
  def login
    @usuario = Usuario.find_by_email(params[:email]) # Cambia aquí el nombre del modelo
    if @usuario && @usuario.authenticate(params[:password])
      token = JsonwebToken.jwt_encode(user_id: @usuario.id)
      render json: { token: token }, status: :ok
    else
      render json: { error: 'Invalid username or password' }, status: :unauthorized
    end
  end/

end
