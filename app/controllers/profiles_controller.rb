class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
  end

  def new
    @profile = Profile.new
  end

  def edit
    @profile = Profile.new(params[:id])
  end

  def create
    @profile = Profile.new(profile_params)

    if @profile.save
      redirect_to @profile
    else
      render 'new'
    end
  end

  def update
    @profile = Profile.new(profile_params)

    if @profile.update
      redirect_to @profile
    else
      render 'new'
    end
  end

  def show
    @profile = Profile.find(params[:id])
  end

  private
  def profile_params
    params.require(:profile).permit(:name, :age, :gender, :profession)
  end
end
