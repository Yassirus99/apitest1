class ApplicationController < ActionController::API
  include JsonwebToken
  # before_action :authenticate_request

  private

  def authenticate_request
    header = request.headers['Authorization']
    if header.present?
      token = header.split(' ').last
      if token.present?
        decoded = jwt_decode(token)
        @current_user = Usuario.find(decoded[:user_id])
      end
    end
  end
end
