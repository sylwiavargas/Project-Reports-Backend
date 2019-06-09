class Api::V1::NgosController < ApplicationController
  before_action :find_ngo, only: [:update]

    def create
       @ngo = Ngo.new(ngo_params)
       @ngo.save
    end

    def new
      @ngo = Ngo.new
    end

    def index
    	@ngos = Ngo.all
    	render json: @ngos
    end

    def show
    	@ngo = Ngo.find(params[:id])
    	render json: @ngo
    end

    def update
      @ngo.update(ngo_params)
      if @ngo.save
        render json: @ngo, status: :accepted
      else
        render json: { errors: @ngo.errors.full_messages }, status: :unprocessible_entity
      end
    end


    private

    def ngo_params
      params.require(:ngo).permit(:name_ngo, :photo_url_ngo, :logo_url_ngo, :description_ngo, :challenge_ngo, :mentor_one_name, :mentor_one_bio, :mentor_two_ngo, :mentor_two_bio, :ngo_website_ur)
    end

    def find_ngo
      @ngo = Ngo.find(params[:id])
    end
end
