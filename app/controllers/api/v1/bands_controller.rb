class Api::V1::BandsController < ApplicationController
  def index
    if params[:name].present?
      @bands = Band.where('name ILIKE ?', "%#{params[:name]}%")
    else
      @bands = Band.all
    end
    render json: @bands
  end
end
