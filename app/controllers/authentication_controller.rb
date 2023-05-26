class AuthenticationController < ApplicationController

  skip_before_action :authenticate_request, only: [:authenticate]

  def authenticate
    user = Usuario.find_by(CORREO_ELECTRONICO_USUARIO: params[:email])
    if user && user.authenticate(params[:password])
      token = JWT.encode({ user_id: user.id }, Rails.application.secret_key_base)
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
