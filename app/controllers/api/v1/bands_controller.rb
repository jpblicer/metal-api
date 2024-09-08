class Api::V1::BandsController < ApplicationController
  def index
    if params[:name].present?
      @bands = Band.where('name ILIKE ?', "%#{params[:name]}%")
    else
      @bands = Band.all
    end
    render json: @bands
  end

  def create
    @band = Band.new(band_params)
    if @band.save
      render json: @band, status: :created
    else
      render json: { error: @band.errors.messages }, status: :unprocessable_entity
    end
  end

  private

  def band_params
    params.require(:band).permit(:name, :country, members: {}, albums: [])
  end
end
