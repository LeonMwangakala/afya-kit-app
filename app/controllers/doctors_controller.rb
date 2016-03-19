class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:edit, :update, :show]

  def new
    @doctor = Doctor.new
    @user = User.new
  end

  def create
    @doctor = Doctor.create(doctor_params)
  end

  def edit
    
  end

  def update
    if @doctor.update(doctor_params) 
        flash[:info] = "Your account was successfully updated"
        redirect_to doctors_path
    else
       render 'edit'  
    end
  end

  def show
    
  end

  private
  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit!
  end

end