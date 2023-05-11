class BdusersController < ApplicationController
    before_action :set_user, only: [:show, :destroy]
  
    def index
      @bdusers = Bduser.all
      render json: @bdusers, status: :ok
    end
  
    def show
      render json: @bduser, status: :ok
    end
  
    def create
      @bduser = Bduser.new(user_params)
      if @bduser.save
        render json: @bduser, status: :created
      else
        render json: @bduser.errors, status: :unprocessable_entity
      end
    end
  
    def update
      @bduser = Bduser.find(params[:id])
      if @bduser.update(user_params)
        render json: @bduser, status: :ok
      else
        render json: @bduser.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @bduser.destroy
      head :no_content
    end
  
    private
  
    def set_user
      @bduser = Bduser.find(params[:id])
    end
  
    def user_params
      params.require(:bduser).permit(:username, :email, :password)
    end
  end