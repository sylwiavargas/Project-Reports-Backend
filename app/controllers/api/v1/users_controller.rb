class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:update]

    def create
       @user = User.new(user_params)
       @user.save
    end

    def new
      @user = User.new
    end

    def index
    	@users = User.all
    	render json: @users
    end

    def show
    	@user = User.find(params[:id])
    	render json: @user
    end

    def update
      @user.update(user_params)
      if @user.save
        render json: @user, status: :accepted
      else
        render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
      end
    end

    private

    def user_params
        params.require(:user).permit(:name, :password_digest)
    end

    def find_user
      @user = User.find(params[:id])
    end
end
