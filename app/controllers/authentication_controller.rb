class AuthenticationController < ApplicationController

    skip_before_action :authenticate_request, only: [:login]
  
    # POST
    def login
      @bduser = Bduser.find_by_email(params[:email])
      if @bduser && @bduser.authenticate(params[:password])
        token = JsonwebToken.jwt_encode(user_id: @bduser.id)
        render json: { token: token }, status: :ok
      else
        render json: { error: 'Invalid username or password' }, status: :unauthorized
      end
    end
  
  end
  