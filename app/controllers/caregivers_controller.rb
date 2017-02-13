class CaregiversController < ApplicationController
  before_action :set_caregiver, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @caregiver = Caregiver.new
  end

  def create
    @caregiver = Caregiver.new(caregiver_params)
    if
      @caregiver.save
      redirect_to @caregiver, notice: "Your profile has been sucessfully created"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @caregiver= Caregiver.update(fammember_params)
  end

  def destroy
    @caregiver.destroy
    redirect_to caregivers_url
  end

  private

  def set_caregiver
    @caregiver = Caregiver.find(params[:id])
  end

  def caregiver_params
    params.require(:caregiver).permit(:first_name, :last_name, :contact, :email, :password, :gender, :certification, :yearsofexperience, :experiencedescription, :photo)
  end
end
