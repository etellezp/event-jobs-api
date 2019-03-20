class Api::ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :update, :destroy]

  def index
    @profiles = Profile.all
    render json: @profiles
  end

  def show
    render json: @profile
  end

  def create
    profile = Profile.new(profile_params)
    if profile.save
      render json: profile
    else
      render json: { message: profile.errors }, status: 400
    end
  end

  def update
    if @profile.update(profile_params)
      render json: @profile
    else
      render json: { message: @profile.errors }, status: 400
    end
  end

  def destroy
    if @profile.destroy
      render status: 204
    else
      render json: { message: "Unable to delete this profile" }
    end
  end

  private

    def set_profile
      @profile = Profile.find(params[:id])
    end

    def profile_params
      params.require(:profile).permit(:image_url, :about, :rate, :location, :name, :skill)
    end

end
