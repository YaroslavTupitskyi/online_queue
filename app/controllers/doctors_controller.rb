class DoctorsController < ApplicationController
  before_action :set_hospital
  # before_action :set_doctor, except: [:create]

  def create
    @doctor = @hospital.doctors.create(doctor_params)
    redirect_to @hospital
  end

  def show
    @doctor = @hospital.doctors.find(params[:id])
  end

  private

  def set_hospital
    @hospital = Hospital.find(params[:hospital_id])
  end

  def set_doctor
    @doctor = @hospital.doctors.find(params[:id])
  end

  def doctor_params
    params[:doctor].permit(:name, :specialization)
  end
end
